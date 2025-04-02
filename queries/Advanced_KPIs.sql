-- ADVANCED LEVEL KPI'S

-- 1. Identify Customers Who Made Purchases Across Multiple Years
WITH customer_years AS (
    SELECT CustomerID, EXTRACT(YEAR FROM Date) AS purchase_year
    FROM transactions
    GROUP BY CustomerID, purchase_year
),
active_customers AS (
    SELECT CustomerID, COUNT(DISTINCT purchase_year) AS years_active
    FROM customer_years
    GROUP BY CustomerID
    HAVING COUNT(DISTINCT purchase_year) >= 2
)
SELECT ac.CustomerID, c.Name, ac.years_active
FROM active_customers ac
JOIN customers c ON ac.CustomerID = c.CustomerID
ORDER BY ac.years_active DESC;


-- 2. Detect Consecutive Months of Sales Growth (Revenue increased compared to the previous month)
WITH monthly_sales AS (
    SELECT 
        EXTRACT(YEAR FROM Date) AS Year, 
        EXTRACT(MONTH FROM Date) AS Month,
        ROUND(SUM(Unit_Price * Quantity * (1 - Discount)),2) AS total_revenue
    FROM transactions
    GROUP BY Year, Month
),
revenue_growth AS (
    SELECT Year, Month, total_revenue,
           ROUND(LAG(total_revenue) OVER (ORDER BY Year, Month),2) AS previous_month_revenue
    FROM monthly_sales
)
SELECT year, month, total_revenue, previous_month_revenue
FROM revenue_growth
WHERE total_revenue > previous_month_revenue;

-- 3.  Highest Revenue in Each Category and Sub_Category
WITH category_sales AS (
    SELECT 
        p.Category, p.Sub_Category, 
        ROUND(SUM(t.Unit_Price * t.Quantity * (1 - t.Discount)),2) AS total_revenue
    FROM transactions t
    JOIN products p ON t.ProductID = p.ProductID
    GROUP BY p.Category, p.Sub_Category
),
ranked_products AS (
    SELECT *, 
           RANK() OVER (PARTITION BY Category ORDER BY total_revenue DESC) AS ranking
    FROM category_sales
)
SELECT Category, Sub_Category, total_revenue, ranking
FROM ranked_products;

-- 4. Employees Who Generated Revenue Above Average
WITH employee_sales AS (
    SELECT EmployeeID, ROUND(SUM(Unit_Price * Quantity * (1 - Discount)),2) AS total_sales
    FROM transactions
    GROUP BY EmployeeID
),
average_sales AS (
    SELECT AVG(total_sales) AS avg_sales FROM employee_sales
)
SELECT e.Employee, e.Name, es.total_sales
FROM employee_sales es
JOIN employees e ON es.EmployeeID = e.Employee
JOIN average_sales a ON es.total_sales > a.avg_sales
ORDER BY es.total_sales DESC;

-- 5. Ranking store performance by total revenue
WITH store_revenue AS (
    SELECT t.StoreID, s.Country, ROUND(SUM(t.Unit_Price * (1 - t.Discount) * t.Quantity),2) AS total_revenue
    FROM transactions t
    JOIN stores s ON t.StoreID = s.StoreID
    GROUP BY t.StoreID, s.Country
),
ranked_stores AS (
    SELECT sr.StoreID, sr.Country, sr.total_revenue,
           RANK() OVER (PARTITION BY sr.Country ORDER BY sr.total_revenue DESC) AS country_rank
    FROM store_revenue sr
)
SELECT rs.StoreID, s.Store_Name, rs.Country, s.City, rs.total_revenue, rs.country_rank
FROM ranked_stores rs
JOIN stores s ON rs.StoreID = s.StoreID
ORDER BY rs.total_revenue DESC;

-- 6. Identify Customers Multiple Purchase (within last 90 days)
WITH customer_purchases AS (
    SELECT CustomerID, COUNT(*) AS transaction_count, MIN(Date) AS first_purchase_date, MAX(Date) AS last_purchase_date
    FROM transactions
    WHERE Date >= CURDATE() - INTERVAL 90 DAY
    GROUP BY CustomerID
),
returning_customers AS (
    SELECT * FROM customer_purchases WHERE transaction_count > 1
)
SELECT rc.CustomerID, c.Name, rc.transaction_count, rc.first_purchase_date, rc.last_purchase_date
FROM returning_customers rc
JOIN customers c ON rc.CustomerID = c.CustomerID
ORDER BY rc.last_purchase_date DESC;

-- Using windows function
WITH customer_purchases AS (
    SELECT 
        CustomerID, 
        COUNT(*) AS transaction_count, 
        MIN(Date) AS first_purchase_date, 
        MAX(Date) AS last_purchase_date
    FROM transactions
    WHERE Date >= CURDATE() - INTERVAL 90 DAY
    GROUP BY CustomerID
),
returning_customers AS (
    SELECT * FROM customer_purchases WHERE transaction_count > 1
),
purchase_patterns AS (
    SELECT 
        CustomerID, 
        Date AS purchase_date, 
        LEAD(Date) OVER (PARTITION BY CustomerID ORDER BY Date) AS next_purchase_date,
        LAG(Date) OVER (PARTITION BY CustomerID ORDER BY Date) AS previous_purchase_date,
        DATEDIFF(LEAD(Date) OVER (PARTITION BY CustomerID ORDER BY Date), Date) AS days_until_next,
        DATEDIFF(Date, LAG(Date) OVER (PARTITION BY CustomerID ORDER BY Date)) AS days_since_last
    FROM transactions
    WHERE Date >= CURDATE() - INTERVAL 90 DAY
)
SELECT 
    rc.CustomerID, 
    c.Name, 
    rc.transaction_count, 
    rc.first_purchase_date, 
    rc.last_purchase_date, 
    pp.purchase_date, 
    pp.next_purchase_date, 
    pp.previous_purchase_date, 
    pp.days_until_next, 
    pp.days_since_last
FROM returning_customers rc
JOIN customers c ON rc.CustomerID = c.CustomerID
JOIN purchase_patterns pp ON rc.CustomerID = pp.CustomerID
ORDER BY rc.last_purchase_date DESC, pp.purchase_date DESC;