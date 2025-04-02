-- Database & Initialization
Create DATABASE Global_Fashion_Retail_Sales_Analysis;
USE Global_Fashion_Retail_Sales_Analysis;

-- Create Customers Table: Storing Customer Information
Create table customers (
	CustomerID INT Primary Key,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Telephone VARCHAR(100),
    City VARCHAR(100),
    Country VARCHAR(100),
    Gender VARCHAR(50),
    Date_of_Birth DATE,
    Job_Title VARCHAR(100)
    );

-- Import data from a CSV file (big data)
LOAD DATA LOCAL INFILE 'C:/Users/Sudee/OneDrive/Desktop/projects - new/SQL/Global Fashion Retail sales/customers.csv'
INTO TABLE customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- Display Table
SELECT * FROM customers;

-- Data Cleaning Step: Handling Missing Values
UPDATE customers 
SET 
    job_title = 'Unknown'
WHERE
    job_title IS NULL OR job_title = '';

-- Create Discounts Table
Create Table discounts (
	Start date,
    End date,
    Discount float,
    Description VARCHAR(100),
    Category VARCHAR(100),
    Sub_Category VARCHAR(100)
    );

-- Import data from a CSV file
LOAD DATA LOCAL INFILE 'C:/Users/Sudee/OneDrive/Desktop/projects - new/SQL/Global Fashion Retail sales/discounts.csv'
INTO TABLE discounts
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- Display Table
SELECT * FROM discounts;

-- Data Cleaning Step: remove unwanted blanks data from category and sub_category
DELETE FROM discounts 
WHERE
    (category IS NULL OR category = '')
    AND (sub_category IS NULL
    OR sub_category = '');

-- Create Employees Table
Create Table employees (
	Employee INT Primary Key,
    StoreID INT,
    Name VARCHAR(100),
    Position VARCHAR(100));
    
-- Import data from CSV file
LOAD DATA LOCAL INFILE 'C:/Users/Sudee/OneDrive/Desktop/projects - new/SQL/Global Fashion Retail sales/employees.csv'
INTO TABLE employees
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- Display Table
Select * from employees;

-- Create Products Table
Create Table products (
	ProductID INT ,
    Category VARCHAR(100),
    Sub_Category VARCHAR(100),
    Description_PT VARCHAR(100),
    Description_DE VARCHAR(100),
    Description_FR VARCHAR(100),
    Description_ES VARCHAR(1000),
    Description_EN VARCHAR(100),
    Description_ZH VARCHAR(100),
    Color VARCHAR(100),
    Sizes VARCHAR(100),
    Production_Cost FLOAT
    );

-- Import data from CSV file
LOAD DATA LOCAL INFILE 'C:/Users/Sudee/OneDrive/Desktop/projects - new/SQL/Global Fashion Retail sales/products.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- Display Table
SELECT * FROM products;

-- Data Cleaning Step: Handling Missing Values
UPDATE products
SET color = 'Unknown', Sizes = 'Unknown'
WHERE (color = '') 
AND 
(Sizes = 'Unknown');

-- Create Stores Table
Create TABLE stores (
	StoreID INT Primary Key,
    Country VARCHAR(100),
    City VARCHAR(100),
    Store_name VARCHAR(100),
    No_of_Employees INT,
    Zip_Code VARCHAR(100),
    Latitude FLOAT,
    Longitude FLOAT
    );

-- Import data from a CSV file
LOAD DATA LOCAL INFILE 'C:/Users/Sudee/OneDrive/Desktop/projects - new/SQL/Global Fashion Retail sales/stores.csv'
INTO TABLE stores
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;    

-- Display table
SELECT *
FROM stores;

-- Create Transactions Table
Create TABLE transactions (
	InvoiceID VARCHAR(100),
    Line INT,
    CustomerID INT,
    ProductID INT,
    Size VARCHAR(100),
    Color VARCHAR(100),
    Unit_Price FLOAT,
    Quantity INT,
    Date DATETIME,
    Discount Float,
    Line_Total INT,
    StoreID INT,
    EmployeeID INT,
    Currency VARCHAR(100),
    Currency_Symbol VARCHAR(100),
    SKU VARCHAR(100),
    Transaction_type VARCHAR(100),
    Payment_Method VARCHAR(100),
    Invoice_total INT
    );

-- Import data from a CSV file
LOAD DATA LOCAL INFILE 'C:/Users/Sudee/OneDrive/Desktop/projects - new/SQL/Global Fashion Retail sales/transactions.csv'
INTO TABLE transactions
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- Display Table
SELECT * FROM transactions;

-- Data Cleaning Step: Handling Missing Values
Update transactions
SET color = 'Unknown'
WHERE color = '';



