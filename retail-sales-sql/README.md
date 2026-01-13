# retail-sales-analysis-sql
Retail sales data analysis using SQL with real-world business queries and insights.
![](https://github.com/Nitishkumar50814/retail-sales-analysis-sql/blob/main/data/SEO-Image-2.jpg)

# 🛒 Retail Sales Analysis (SQL)

This project focuses on **analyzing retail sales data using SQL** to extract meaningful business insights.  
It demonstrates **data cleaning, exploratory analysis, aggregation, time-based analysis, and customer insights** using MySQL.

---

## 🛠️ Tech Stack
- **Database:** MySQL  
- **Language:** SQL  
- **Tool:** MySQL Workbench  

---

## 📂 Project Structure
```
retail-sales-sql/
│
├── data/
│ └── retail_sales.csv
│
├── sql/
│ └── retail_sales_analysis.sql
│
└── README.md

```


---

## 🧱 Dataset Description
The dataset contains transactional retail sales records with the following key fields:

- Transaction ID
- Sale date and time
- Customer details (ID, gender, age)
- Product category
- Quantity sold
- Price per unit
- Cost of goods sold (COGS)
- Total sale value

---

## 🧹 Data Cleaning
- Removed records containing **NULL values**
- Ensured consistency across numeric and date/time fields
- Prepared a clean dataset for reliable analysis

---

## 🔍 Data Exploration
- Total number of transactions
- Number of unique customers
- Sales distribution across categories and genders

---

## 📊 Business Questions Answered
1. Retrieve all sales made on a specific date  
2. Find high-quantity Clothing sales in Nov-2022  
3. Calculate total revenue by category  
4. Determine the average age of Beauty category customers  
5. Identify high-value transactions (>1000)  
6. Analyze transactions by gender and category  
7. Calculate monthly average sales  
8. Find the top 5 customers by total sales  
9. Count unique customers per category  
10. Analyze orders by time-based shifts (Morning, Afternoon, Evening)

---

## 📈 Sample Query – Monthly Average Sales
```sql
SELECT
    YEAR(sale_date) AS year,
    MONTH(sale_date) AS month,
    ROUND(AVG(total_sale), 2) AS avg_sale
FROM retail_sales
GROUP BY YEAR(sale_date), MONTH(sale_date)
ORDER BY year, month;
```

## ⏰ Shift-wise Order Analysis
Orders are categorized based on sale time:

- **Morning:** Before 12 PM  
- **Afternoon:** Between 12 PM and 5 PM  
- **Evening:** After 5 PM  

Implemented using **CTE (WITH clause)** and **CASE statements**.

---

## 🧠 Key SQL Concepts Used
- PRIMARY KEY  
- Data cleaning with `DELETE` and `NULL` checks  
- Aggregations (`SUM`, `AVG`, `COUNT`)  
- GROUP BY & HAVING  
- Date and time functions  
- CTE (WITH clause)  
- CASE statements  
- Sorting and limiting results  

---

## 🎯 Learning Outcomes
- Performed real-world retail sales analysis using SQL  
- Applied business logic to transactional data  
- Improved analytical querying skills  
- Gained hands-on experience with time-based and customer analysis  

---

## 👨‍💻 Author
**Nitish Kumar**  
Aspiring Data Analyst / Data Scientist  

🔗 GitHub: https://github.com/Nitishkumar50814
