
#  📚 A MySQL-based Library Management System with real-world SQL analysis
## SQL Library Management System
---
A **MySQL-based Library Management System** designed to demonstrate real-world database design, relationships, and analytical SQL queries.  
This project focuses on **data modeling, foreign keys, joins, and business-oriented SQL analysis**.
![](https://github.com/Nitishkumar50814/sql-library-management-system/blob/main/er-diagram/Public-Library-.jpg)

---

## 🛠️ Tech Stack
- **Database:** MySQL  
- **Language:** SQL  
- **Tool:** MySQL Workbench  

---


## 📂 Project Structure

```text
sql-library-management-system/
│
├── data/          # CSV data files
├── sql/           # SQL schema & analysis queries
├── er-diagram/    # EER / ER diagram files
└── README.md
```

---

## 🧱 Database Tables
- **books** – Stores book details (category, price, author, availability)
- **members** – Stores library member information
- **employees** – Employee details
- **branch** – Branch and manager information
- **issued_status** – Issued book records
- **return_status** – Returned book records

---

## 🔗 Database Relationships
- One-to-Many: `branch → employees`
- One-to-Many: `members → issued_status`
- One-to-Many: `books → issued_status`
- One-to-One: `issued_status → return_status`

All relationships are enforced using **foreign key constraints**.

---

## 📐 ER Diagram
The database schema was first designed using an **EER diagram** in MySQL Workbench before implementation.

 ![er-diagram](https://github.com/Nitishkumar50814/sql-library-management-system/blob/main/er-diagram/ERR_Diagram.jpg)

------


## 🚀 Features & Tasks Implemented

### 🔹 CRUD Operations
- Insert new book records  
- Update member details  
- Delete issued records  
- Retrieve books issued by a specific employee  
- Identify members who issued more than one book  

---

### 🔹 CTAS (Create Table As Select)
- Created summary tables using query results  
- Example: Book issue count and price-based tables  

---

### 🔹 Data Analysis Queries
- Retrieve books by category  
- Calculate total rental income by category  
- Find members registered in the last 30 days  
- Identify books not yet returned  
- Detect overdue books using date calculations  
- Join employees with branch manager details  

---

## 📊 Sample Query – Overdue Books
```sql
SELECT 
    m.member_name,
    bk.book_title,
    ist.issued_date,
    DATEDIFF(CURDATE(), ist.issued_date) AS overdue_days
FROM members m
JOIN issued_status ist 
    ON m.member_id = ist.issued_member_id
JOIN books bk 
    ON bk.isbn = ist.issued_book_isbn
LEFT JOIN return_status rs 
    ON rs.issued_id = ist.issued_id
WHERE rs.return_date IS NULL
  AND DATEDIFF(CURDATE(), ist.issued_date) > 30;
```

## 🧠 Key SQL Concepts Used
- PRIMARY KEY & FOREIGN KEY
- INNER JOIN, LEFT JOIN
- GROUP BY & HAVING
- DISTINCT
- Date functions (`CURDATE`, `DATEDIFF`)
- CTAS (Create Table As Select)
- Data integrity & normalization

---

## 👨‍💻 Author
**Nitish Kumar**  
Aspiring Data Analyst / Data Scientist  

🔗 GitHub: https://github.com/Nitishkumar50814
