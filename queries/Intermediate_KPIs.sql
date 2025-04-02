-- INTERMEDIATE LEVEL KPI'S

-- 1. Total Revenue & Profit Calculation
WITH revenue_cte AS (
    SELECT 
        ROUND(SUM(t.Unit_Price * (1 - t.Discount) * t.Quantity),2) AS total_revenue
    FROM transactions t
),
cost_cte AS (
    SELECT 
        ROUND(SUM(p.Production_Cost * t.Quantity),2) AS total_cost
    FROM transactions t
    JOIN products p ON t.ProductID = p.ProductID
)
SELECT 
    r.total_revenue,
    c.total_cost,
    ROUND((r.total_revenue - c.total_cost),2) AS total_profit
FROM revenue_cte r, cost_cte c;

-- 2. Retrieve Customers with Multiple Purchases (More than 5 transactions)
SELECT CustomerID, COUNT(*) AS transaction_count
FROM transactions
GROUP BY CustomerID
HAVING COUNT(*) > 5;

-- 3. Identify Products That Have Never Been Purchased
SELECT p.productID, p.Description_EN
FROM products p
LEFT JOIN transactions t ON p.productID = t.productID
WHERE t.productID IS NULL;

-- 4. Rank Top 5 Selling Products (Using Window Function)
WITH product_sales AS (
    SELECT 
        ProductID, 
        SUM(Quantity) AS total_quantity_sold
    FROM transactions
    GROUP BY ProductID
),
ranked_products AS (
    SELECT 
        ProductID, 
        total_quantity_sold, 
        RANK() OVER (ORDER BY total_quantity_sold DESC) AS ranking
    FROM product_sales
)
SELECT 
    rp.ProductID, 
    p.Description_EN, 
    rp.total_quantity_sold, 
    rp.ranking
FROM ranked_products rp
JOIN products p ON rp.ProductID = p.ProductID
WHERE rp.ranking <= 5
ORDER BY rp.ranking;

-- 5. Revenue Per Month
SELECT 
    EXTRACT(YEAR FROM date) AS Year,
    EXTRACT(MONTH FROM date) AS Month,
    ROUND(SUM(Unit_Price * (1 - Discount) * Quantity),2) AS total_revenue
FROM
    transactions
GROUP BY YEAR , MONTH
ORDER BY YEAR DESC , MONTH DESC;

-- 6. Customers Who Purchased in Highest Multiple Stores
SELECT t.CustomerID, c.Name, COUNT(DISTINCT t.StoreID) AS store_count
FROM transactions t
JOIN customers c ON t.CustomerID = c. CustomerID
GROUP BY t.CustomerID, c.Name
HAVING store_count >= 2
ORDER BY store_count DESC;

-- 7. Identify Employee with the Highest Sales
WITH employee_sales AS (
    SELECT EmployeeID, ROUND(SUM(Unit_Price * (1 - Discount) * Quantity),2) AS total_sales
    FROM transactions
    GROUP BY EmployeeID
)
SELECT e.Name, e.Position, es.total_sales,
       DENSE_RANK() OVER (ORDER BY es.total_sales DESC) AS ranking
FROM employee_sales es
JOIN employees e ON es.EmployeeID = e.Employee;

-- 8. Find the First Transaction of Each Customer
WITH first_transaction AS (
    SELECT CustomerID, Date,
           RANK() OVER (PARTITION BY CustomerID ORDER BY Date ASC) AS first_trans
    FROM transactions
)
SELECT CustomerID, date
FROM first_transaction
WHERE first_trans = 1;