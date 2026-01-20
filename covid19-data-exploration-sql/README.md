# COVID-19 Data Exploration using SQL

## 📌 Project Overview
This project focuses on exploratory data analysis (EDA) of global COVID-19 data using SQL.  
The analysis explores infection rates, death counts, vaccination progress, and global trends by leveraging advanced SQL concepts.

The project is designed to demonstrate strong SQL querying, data analysis, and data preparation skills for analytics and data analyst roles.

---

## 🛠️ Skills & Concepts Used
- SQL Joins
- Common Table Expressions (CTEs)
- Temporary Tables
- Window Functions
- Aggregate Functions
- Creating Views
- Data Type Conversions
- Analytical Queries

---

## 📊 Datasets Used
- **coviddeaths_csv** – COVID-19 cases, deaths, population, and location details  
- **covidvacinations_csv** – Vaccination data by country and date  

---

## 🔍 Key Analysis Performed

### 1️⃣ Data Cleaning & Filtering
- Removed records with NULL continents
- Filtered country-level and continent-level data

### 2️⃣ Total Cases vs Total Deaths
- Calculated death percentage over time for specific countries

### 3️⃣ Total Cases vs Population
- Analyzed infection spread relative to population size

### 4️⃣ Countries with Highest Infection Rate
- Identified countries with the highest percentage of population infected

### 5️⃣ Countries & Continents with Highest Death Count
- Aggregated death counts by country and continent

### 6️⃣ Global COVID-19 Trends
- Calculated global daily cases and deaths
- Computed daily death percentage worldwide

### 7️⃣ Population vs Vaccination Analysis
- Joined deaths and vaccination datasets
- Calculated rolling vaccination counts using window functions

---

## 🧮 Advanced SQL Techniques Used

### ✅ CTE (Common Table Expression)
Used CTEs to calculate rolling vaccination numbers and vaccination percentages.

### ✅ Temporary Tables
Created temporary tables to store intermediate vaccination calculations for reuse.

### ✅ Views
Created SQL views to store processed vaccination data for visualization and reporting.

---

## 📈 Sample Insights
- Countries with smaller populations often showed higher infection percentages
- Vaccination rollout trends varied significantly across regions
- Death rates differed widely between continents

---
## 👤 Author
**Nitish Kumar**  
Data Analyst | SQL | Python | Power BI  

📌 GitHub: https://github.com/Nitishkumar50814

## 📁 Project Structure

