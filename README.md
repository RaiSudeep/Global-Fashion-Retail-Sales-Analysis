![Global Fashion Retail Sales Analysis](https://github.com/user-attachments/assets/1ae125a4-9c25-4bac-b52a-50b02946ac1d)

# 🏬 Global Fashion Retail Sales Analysis (SQL + Power BI Dashboard)


![MySQL](https://img.shields.io/badge/MySQL-Database-blue?logo=mysql) 
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow?logo=powerbi)
![Power Query](https://img.shields.io/badge/Power%20Query-ETL-green?logo=microsoft)

---
## 📍 Project Overview  
This project analyses **24 months of global retail sales data** across multiple regions and product
categories to identify revenue drivers, underperforming segments, and supply chain optimisation opportunities. 

---
 ## ❓ Problem Statement  
Global fashion retailers operate in highly competitive markets where customer loyalty, pricing strategies, and store performance directly impact profitability. Transactional sales data offers a powerful lens into these dynamics, capturing purchase behaviour, discount effectiveness, and product demand across regions.  

This project addresses the challenge:  
**_How can a global fashion retailer use transactional data to improve customer retention, optimise pricing, and identify high‑performing stores and products?_**

---
## 📊 Dashboard Preview  
### Dashboard
![Dashboard](https://github.com/user-attachments/assets/e377fec2-a122-450c-8322-00d60acfb9ba)

### Tooltip
![Tooltip](https://github.com/user-attachments/assets/30f4dffa-e68a-43e3-a6bd-544bbb9e500b)

---
## 📂 Dataset Background  
The dataset is sourced from [Kaggle – Global Fashion Retail Analytics](https://www.kaggle.com/datasets/ricgomes/global-fashion-retail-stores-dataset/data) 
and includes:
- **📈 4+ million sales records**  
- **🏪 35 stores across 7 countries** → 🇺🇸 🇨🇳 🇩🇪 🇬🇧 🇫🇷 🇪🇸 🇵🇹  
- **💱 Multi-currency transactions** → 💵 USD | 💶 EUR | 💴 CNY | 💷 GBP  
- **🛍️ Customer Behaviour & Segmentation** → Age, occupation, purchase habits.  
- **🎯 Pricing & Discount Analysis** → Study discount impact on customer decisions.  
- **🌐 Geographic Sales Comparison** → Trends by country, store performance.
- **📝 Structured tables** → `customers`, `transactions`, `products`, `stores`, `employees`, `discounts`

This dataset provides a **rich foundation for retail analytics**, including **customer insights, store performance, 
product trends, and pricing strategies**.

## 📂 Dataset Download
Due to file size restrictions on GitHub, the file is stored externally.  
**Zip File Size:** 223 MB  
[📂 Download Dataset Here](https://drive.google.com/drive/folders/1il8KN_5F6H0wl_hABbkkW_IgEUrQYHOD?usp=drive_link)

## 📂 Power BI Dashboard Download
Due to file size restrictions on GitHub, the file is stored externally.  
**Zip File Size:** 259.7 MB  
[📂 Download Dashboard Here](https://drive.google.com/file/d/156Me9nUeavQE5wEsEBlDTISkBfq4XaZI/view?usp=sharing)  

---
## 🧱 SQL Schema & Data Model  
SQL was used to clean, join, and transform raw tables into analysis-ready views. Key components:   
- Normalised schema with foreign key relationships.  
- Views for KPIs like revenue, profit, and customer retention.  
- Advanced queries using CTEs, window functions, and aggregations.

📁 See the [`/queries`](./queries) folder for:
- `schema_setup.sql`: Database initialisation.  
- `Basic_KPIs.sql`, `Intermediate_KPIs.sql`, `Advanced_KPIs.sql`: Business logic and insights.  

---
## 💡 Key Insights  
- 60% of revenue comes from repeat customers.  
- Top 5 subcategories drive 40% of total sales.  
- Stores in the US and UK outperform others in revenue and profit.  
- Discounts increase purchase volume but reduce profit margins.  
- Employees with above-average sales contribute 2x more revenue.

---
## 🛠️ Tools Used  
- **MySQL:** Data cleaning, joins, aggregations, and KPI logic.  
- **Power BI:** Dashboard design, DAX measures, slicers, and interactive visuals.  
- **Power Query:** Data shaping and transformation for reporting.  

---
## 🔄 Process Walkthrough  
- Imported raw CSVs into MySQL and built relational schema.  
- Created SQL views for KPIs and trend analysis.  
- Connected Power BI to SQL views for dynamic reporting.  
- Designed dashboard with filters for year, gender, and payment method.

---  
## 📊 Dashboard Highlights  
- KPI cards: Revenue, profit margin, repeat customers.  
- Filters: Region, category, discount level.  
- Charts: Matrix, donut, waterfall, bar, line.  

---
## 📌 Expected Outcomes & Insights
This dashboard helps business users answer key questions about global fashion retail performance:
- **Which product sub-categories drive the most revenue?**  
  → *Coats and Blazers, Pants and Jeans, and Suits consistently lead in sales.*

- **How does revenue vary by gender and payment method?**  
  → *Female customers contribute 48.3% of revenue, with card payments dominating across regions.*

- **Which countries generate the highest revenue?**  
  → *China leads with over €400M, followed by the US and Germany.*

- **What are the monthly revenue trends?**  
  → *Sales peak in January, June, and November, aligning with seasonal campaigns.*

- **How do discounts affect profit margins?**  
  → *Discounts boost volume but reduce profitability, especially in low-margin categories.*   

---
## 🧠 Reflections  
- SQL views simplified Power BI modelling and improved performance.  
- DAX measures enabled dynamic calculations like YoY growth and profit ratios.  
- Business users appreciated the ability to segment data by store, customer type, and time.

---
## ⚠️ Limitations  
- Synthetic dataset; not linked to real-time systems.  
- No customer feedback or satisfaction scores.  
- No inventory or supply chain data included.

---
## 🔮 Next Steps  
- Add RLS (Row-Level Security) for store-level access.  
- Integrate with a real-time database or cloud warehouse.  
- Expand dashboard to include predictive metrics and alerts.

---
## 📘 What I Learned  
- Strengthened SQL skills for business analytics and data modelling.  
- Designed interactive dashboards tailored for retail decision-makers. 
- Learned to connect backend logic with frontend storytelling using Power BI

---
## 🚀 Final Thoughts  
This project demonstrates how SQL and Power BI can work together to deliver actionable insights 
in the retail sector, helping businesses optimise performance and customer engagement.

---
## 📬 Contact  
For questions or collaboration, feel free to reach out:  
📧 Email: sudiprai969@gmail.com  
🔗 LinkedIn: [Sudeep Rai](https://www.linkedin.com/in/sudeep-rai/)  

---

> 💡 Full SQL scripts and Power BI dashboard available in this repository.  
> Open to feedback, suggestions, or contributions!

