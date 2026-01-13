create database sql_project_01;
DROP TABLE if EXISTS retail_sales ;
USE sql_project_01;
create table retail_sales
(
transactions_id	INT PRIMARY KEY,
sale_date	DATE,
sale_time	TIME,
customer_id	INT,
gender	VARCHAR(15),
age	INT,
category	VARCHAR(15),
quantity	INT,
price_per_unit	FLOAT,
cogs	FLOAT,
total_sale FLOAT
);

#---------------------------------------data cleaning-------------------------------------------
SELECT * FROM retail_sales;

DELETE FROM retail_sales 
WHERE
    transactions_id IS NULL
    OR 
    sale_date IS NULL
    OR 
    sale_time IS NULL
    OR 
    customer_id IS NULL
    OR 
    gender IS NULL
    OR 
    age IS NULL
    OR 
    category IS NULL
    OR 
    quantiy IS NULL
    OR 
    price_per_unit IS NULL
    OR 
    cogs IS NULL
    OR 
    total_sale IS NULL;


#-------------------------------------data exploration---------------------------------------

# how many customer have ??
select count(*) as total_sale from retail_sales;

# how many uniuqe customer we have ?

select count(distinct customer_id) from retail_sales;


#-----------------------------------------------data Analysis---------------------------------------------------------

# Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05'.

# Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022.

#Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.

#Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

#Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.

#Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

#Q.7 Write a SQL query to calculate the average sale for each month.

#Q.8 Write a SQL query to find the top 5 customers based on the highest total sales.

#Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.

#Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)

#----------------------------------------------------------  analyze   ------------------------------------------------------------------------


# Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05'.

select * from retail_sales 
where sale_date='2022-11-05';


# Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022.

SELECT * FROM retail_sales
WHERE category = 'Clothing'
AND 
sale_date between '2022-11-01' and '2022-11-30'
AND
quantity >= 4;

#Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.

select category , count(category) as Quantity ,sum(total_sale) as Total_revenue 
from retail_sales 
group by category
order by 2 Desc;

#Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

select round(avg(age),1  ) as average_age from retail_sales
where category = 'beauty';

#Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.

select transactions_id, total_sale from retail_sales 
where total_sale > 1000
order by 2 DESC ;

#Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

select gender , category, count(*) 
from retail_sales 
group by gender,category 
order by 2;

#Q.7 Write a SQL query to calculate the average sale for each month.


SELECT
    YEAR(sale_date) AS year,
    MONTH(sale_date) AS month,
    round(AVG(total_sale),2)  AS avg_sale
FROM retail_sales
GROUP BY YEAR(sale_date), MONTH(sale_date)
ORDER BY year, month;

#Q.8 Write a SQL query to find the top 5 customers based on the highest total sales.

select customer_id  , sum(total_sale) as total_revenue
from retail_sales 
group by customer_id
order by sum(total_sale) DESC 
limit 5;

#Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.

select distinct category,count( distinct customer_id) as unique_customer
from retail_sales 
group by 1
order by 2 desc;

#Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)

with hourly_table as (
select *,
         case
             when extract(hour from sale_time) < 12 then "morning"
             when extract(hour from sale_time) between 12 and 17 then "Afternoon"
             when extract(hour from sale_time) > 17 then "Evening"
             end as shift
         from retail_sales 
         )
select shift, count(*) as total_order
from hourly_table
group by 1;



#-----------------------------------------------end Project--------------------------------------------------------