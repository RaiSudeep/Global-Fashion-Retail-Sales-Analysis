# 📊 Global Fashion Retail Sales Analysis
💾 **Data Processing: MySQL | Visualization: Power BI**    

## 🔗 Source: Kaggle Dataset  
**Global Fashion Retail Analytics Dataset**  
[🔗 Kaggle Dataset](https://www.kaggle.com/datasets/ricgomes/global-fashion-retail-stores-dataset/data)  

## 📂 Dataset Download
Due to file size restrictions on GitHub, the dataset is stored externally.  
**Zip File Size:** 223 MB  
[📂 Download Dataset Here](https://drive.google.com/drive/folders/1il8KN_5F6H0wl_hABbkkW_IgEUrQYHOD?usp=drive_link)

## 📂 Power BI Dashboard Download
Due to file size restrictions on GitHub, the dataset is stored externally.  
**Zip File Size:** 259.7 MB  
[📂 Download Dashboard Here](https://drive.google.com/file/d/156Me9nUeavQE5wEsEBlDTISkBfq4XaZI/view?usp=sharing)  

### 📝 **Dataset Overview**
This synthetic dataset simulates **two years of transactional data** from a multinational fashion retailer, featuring:
- **📈 4+ million sales records**  
- **🏪 35 stores across 7 countries** → 🇺🇸 🇨🇳 🇩🇪 🇬🇧 🇫🇷 🇪🇸 🇵🇹  
- **💱 Multi-currency transactions** → 💵 USD | 💶 EUR | 💴 CNY | 💷 GBP  
- **🛍️ Customer Behavior & Segmentation** → Age, occupation, purchase habits  
- **🎯 Pricing & Discount Analysis** → Study discount impact on customer decisions  
- **🌐 Geographic Sales Comparison** → Trends by country, store performance  

This dataset provides a **rich foundation for retail analytics**, including **customer insights, store performance, product trends, and pricing strategies**.

---

## 📝 Introduction
Fashion retail businesses generate a vast amount of transactional data every day. **Analyzing this data** helps retailers understand **customer retention, product performance, revenue trends, and employee efficiency**, enabling better business strategies.  
This project uses **SQL queries** to clean, process, and generate **insights from a structured database**.

---

## 📂 Datasets Used
The analysis is based on structured datasets containing **customer transactions, store details, product information, and discount impact**.

| **Dataset**     | **Description** |
|----------------|---------------|
| `customers.csv` | Customer demographic details (Name, Location, Email, etc.). |
| `discounts.csv` | Promotional discount data (Start & End Dates, Categories). |
| `employees.csv` | Employee details (Store ID, Position, Contribution to Sales). |
| `products.csv`  | Product metadata (Category, Subcategory, Color, Size, Production Cost). |
| `stores.csv`    | Store-level details (Location, Employee Count, Revenue). |
| `transactions.csv` | Sales transactions (Invoice details, Price, Quantity, Discounts). |

---
## 🎯 SQL-Based Business Analytics (MySQL)  
This section focuses on **data extraction, transformation, and analysis** using **SQL queries**.  

## 📈 Business KPIs
### A. **Basic Level KPIs**
| **KPI** | **Description** |
|---------|---------------|
| **Total Transactions** | Count of all transactions processed. |
| **Total Customers** | Count of all registered customers. |
| **Total Unique Customers** | Distinct individual customers based on email IDs. |
| **Average Transaction Value** | Average revenue per transaction. |
| **Store Performance** | Total revenue generated per store. |
| **Top 5 Selling Products** | Best-selling products categorized by subcategory. |
| **Employee Contribution** | Employee-wise revenue generation. |
| **Detect Duplicate Customer Entries** | Identifies duplicate customer records. |
| **Retrieve Last 10 Transactions** | Displays the latest transactions in the dataset. |

### B. **Intermediate Level KPIs**
| **KPI** | **Description** |
|---------|---------------|
| **Total Revenue & Profit Calculation** | Computes overall revenue, costs, and profit. |
| **Retrieve Customers with Multiple Purchases** | Customers with more than five transactions. |
| **Identify Products Never Purchased** | Finds products with zero transactions. |
| **Rank Top Selling Products** | Uses window functions to rank best-selling items. |
| **Revenue Per Month** | Monthly breakdown of total revenue. |
| **Customers Who Purchased in Multiple Stores** | Identifies multi-location shoppers. |
| **Employee with the Highest Sales** | Ranks employees based on total sales. |
| **Find First Transaction of Each Customer** | Retrieves each customer's first purchase record. |

### C. **Advanced Level KPIs**
| **KPI** | **Description** |
|---------|---------------|
| **Identify Customers Who Purchased Across Multiple Years** | Tracks repeat buyers across different years. |
| **Detect Consecutive Months of Sales Growth** | Revenue growth trends across months. |
| **Highest Revenue in Each Category and Subcategory** | Finds top-performing product groups. |
| **Employees Who Generated Revenue Above Average** | Identifies high-performing sales employees. |
| **Identify Customers with Multiple Purchases (Last 90 Days)** | Tracks recurring buyers within the last 90 days. |  
| **Ranking Store Performance by Total Revenue** | Ranks stores **within each country** based on total revenue, helping businesses compare location-wise profitability. |

---
## 📊 Power BI Dashboard Insights  
This section focuses on **interactive data visualization** using **Power BI**.  

### 1. **Filters**
✅ **Year Selector** → Track yearly trends.  
✅ **Payment Method Filter** → Identify popular transaction types.  
✅ **Gender Filter** → Analyze customer demographics.  

### 2. **Cards (KPIs)**
📌 **Total Revenue**  
📌 **Production Cost**  
📌 **Profit**  

### 3. **Tables**
📌 **Sub-Category & Total Revenue Breakdown**  

### 4. **Visualizations**
🔹 **Donut Chart** → **Categories - Revenue Breakdown**  
🔹 **Waterfall Chart** → **Yearly Revenue Growth Trends**  
🔹 **Bar Chart** → **Global Sales Performance (Country-Wise Breakdown)**  
🔹 **Line Chart** → **Revenue Analysis (Monthly Trends & Insights**  
   ✅ **Tooltip:** **Hover to view Product Sub-Category Performance insights.**  

---

## 📊 Expected Outcomes & Insights
This project provides **actionable insights** into global fashion retail sales, helping retailers make **data-driven decisions** on customer behavior, product trends, pricing strategies, and store performance.

### **🔍 SQL Business Impact**
✔️ **Customer Retention Analysis** → Identify high-value customers, repeat buyers, and purchasing patterns.  
✔️ **Revenue Optimization** → Understand total revenue, profit margins, and store-wise sales contributions.  
✔️ **Product Performance Tracking** → Detect best-selling items and identify underperforming products.  
✔️ **Employee Efficiency Analysis** → Rank employees based on sales contributions.   
✔️ **Store Location Profitability** → Rank store performance within each country based on total revenue, analyze geographic trends, and identify high-performing locations for market expansion. 

### **🔹 Power BI Dashboard-Specific Insights**
✔️ **Revenue Trend Analysis** → Identifies **seasonal spikes**, helping businesses plan inventory and marketing strategies effectively.  
✔️ **Sales Forecasting** → Uses **historical revenue data** to predict future trends and improve financial planning with **Power BI forecasting models**.  
✔️ **Customer Segmentation & Behavior** → Analyzes **repeat vs. new buyers** using **dynamic filtering**, supporting personalized marketing and targeted promotions.  
✔️ **Store Performance Comparisons** → Enables deep dives into **individual store performance**, assessing **regional success rates**.  
✔️ **Profitability Drivers** → Highlights key **profit contributors** such as **high-margin products, peak seasons**, and store efficiency, guiding **strategic pricing**.   
✔️ **Payment Method Preferences** → Tracks the **popularity of digital vs. cash payments**, allowing businesses to **enhance transaction experiences for customers**.  

By leveraging **structured SQL analysis**, businesses can refine their **marketing strategies, product offerings, and operational efficiencies** based on **data-driven insights**.

---

## 💡 Technologies Used  

| **Category**            | **Technology & Techniques**                             | **Purpose** |
|------------------------|----------------------------------------------------|------------|
| **Database**          | MySQL                                             | Storing & managing structured retail data |
| **Visualization**     | Power BI                                          | Creating interactive reports & dashboards |
| **Query Language**    | SQL (Structured Query Language)                    | Data extraction, cleaning & analysis |
| **Data Cleaning**     | SQL queries                                        | Handling missing values & removing unwanted blanks |
| **Data Transformation** | **Power Query**                                  | Shaping, merging, filtering & cleaning datasets |
| **Analysis Techniques** | CTEs, Window Functions (`RANK()`, `LEAD()`, `LAG()`), Joins (`INNER`, `LEFT`), Aggregations (`SUM()`, `COUNT()`) | Advanced SQL processing & trend analysis |
| **DAX Measures**      | `SUMX`, `COUNTROWS`, `FILTER`, `CALCULATE`, `DIVIDE`, `ALLSELECTED` | Dynamic calculations for Power BI insights |
| **Power BI Features** | Data Modeling, **Power Query**, Slicers, Drill-through, Tooltips, Conditional Formatting | Enhancing interactivity & filtering capabilities |

---

## 📌 How to Use This Analysis
### **SQL-Based Queries (MySQL)**
### 1️⃣ **Clone the Repository**  
```sh
git clone https://github.com/RaiSudeep/Global-Fashion-Retail-Sales-Analysis.git   
cd Global-Fashion-Retail-Sales-Analysis
```

### 2️⃣ **Set Up Database & Clean Data**
**First, create the database schema and import the datasets:**    
```sh
SOURCE queries/schema_setup.sql;
```

### 3️⃣ **Run SQL Queries**
**After setting up the database, run analysis queries:**    
```sh
-- Example: Running Basic KPIs Query  
USE global_fashion_retail_sales_analysis;  
SOURCE queries/Basic_KPIs.sql; 
```

### 4️⃣ **Analyze Insights**  
🔹 **Review Schema & Data Cleaning (queries/schema_setup.sql)**  
🔹 **Explore Basic KPIs (queries/Basic_KPIs.sql)**  
🔹 **Deep-dive into Intermediate & Advanced KPIs (queries/Intermediate_KPIs.sql, queries/Advanced_KPIs.sql)**  

### **Power BI Dashboard**  
### **1️⃣ Load the Dataset into Power BI**
- Open **Microsoft Power BI Desktop**.
- Click **Home → Get Data → Excel/CSV**.
- Select the dataset file and **import the data**.

### **2️⃣ Apply Relevant Filters**
- Use **Year, Payment Method, and Gender** filters to segment data.
- Adjust filter selections to explore **different trends and customer insights**.

### **3️⃣ Explore Key Metrics**
- Check **Total Revenue, Production Cost, and Profit** cards for quick financial insights.
- Use the **Sub-Category & Revenue Table** to analyze product performance.

### **4️⃣ Interact with Visuals**
- Hover over charts for **Tooltips with deep insights** on revenue breakdown.
- Click on categories in the **Donut Chart** for dynamic filtering.

### **5️⃣ Analyze Revenue Trends**
- Use the **Waterfall Chart** to see **Year-over-Year Revenue Growth**.
- View **Global Sales Performance on the Bar Chart** to compare country-wise revenue.

---

## 📷 Screenshots
![image](https://github.com/user-attachments/assets/e377fec2-a122-450c-8322-00d60acfb9ba)
![image](https://github.com/user-attachments/assets/30f4dffa-e68a-43e3-a6bd-544bbb9e500b)

---

## 📬 Contact  
**For any questions or collaboration, feel free to reach out:**  
📧 Email: sudiprai969@gmail.com  
🔗 LinkedIn: https://www.linkedin.com/in/sudeep-rai-78022b18b/  

---
