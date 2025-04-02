
-- BASIC LEVEL KPI'S

-- 1. Total Transactions
SELECT 
    COUNT(*) total_transactions
FROM
    transactions;

-- 2. Total Customers
SELECT 
    COUNT(*) total_customers
FROM
    customers;
    
-- 3. Total Unique Customers
SELECT
	COUNT(DISTINCT Email) total_individual -- sometimes name and surname match. where email are always unique.
FROM
	customers;
    
-- 4. Average Transaction Value
WITH revenue_cte AS (
    SELECT SUM(Unit_Price * (1 - Discount) * Quantity) AS total_revenue,
           COUNT(InvoiceID) AS total_transactions
    FROM transactions
)
SELECT round((total_revenue / total_transactions),0) AS avg_transaction_value
FROM revenue_cte;

-- 5. Store Performance (Total Revenue Per Store)
WITH store_revenue AS (
    SELECT StoreID, ROUND(SUM(Unit_Price * (1 - Discount) * Quantity),2) AS total_revenue
    FROM transactions
    GROUP BY StoreID
)
SELECT s.Store_Name, s.Country, s.City, sr.total_revenue
FROM store_revenue sr
JOIN stores s ON sr.StoreID = s.StoreID
ORDER BY sr.total_revenue DESC;


-- 6. Top 5 Selling product with a sub_category
WITH product_sales AS (
    SELECT 
    ProductID, SUM(Quantity) AS total_quantity_sold
FROM
    transactions
GROUP BY ProductID
)
SELECT 
    p.Description_EN, p.Sub_Category, ps.total_quantity_sold
FROM
    product_sales ps
        JOIN
    products p ON ps.ProductID = p.ProductID
ORDER BY ps.total_quantity_sold DESC
LIMIT 5;

-- 7. Employee Contribution (Total Sales by Employee)
WITH employee_sales AS (
    SELECT EmployeeID, ROUND(SUM(Unit_Price * (1 - Discount) * Quantity),2) AS total_sales
    FROM transactions
    GROUP BY employeeID
)
SELECT e.StoreID, e.Name, e.Position, es.total_sales
FROM employee_sales es
JOIN employees e ON es.EmployeeID = e.Employee
ORDER BY es.total_sales DESC;

-- 8. Detect Duplicate Customer Entries
SELECT Name, COUNT(*) AS duplicate_count
FROM customers
GROUP BY Name
HAVING COUNT(*) > 1;

-- 9. Retrieve Last 10 Transactions
SELECT *
FROM transactions
ORDER BY Date DESC
LIMIT 10;



