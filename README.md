This project focuses on exploring and analyzing customer transactions in an e-commerce dataset using MySQL queries.

Datasets Used
Ecommerece.csv – Transactional data including customer ID, product SKU, spend, and coupon usage.
ecommerce2.csv – Customer details like name, email, gender, age, and location.(for Joins operation)

Objectives
1. Analyze customer behavior based on geography, coupon usage, and gender.
2. Identify high-spending customers and product category trends.
3. Integrate customer and transaction data using SQL joins.

Key SQL Operations
1. SELECT, WHERE, ORDER BY, GROUP BY, HAVING
2. Aggregate functions: SUM, AVG
3. Views: Created for identifying high spenders.
4. Indexes: Added for performance optimization.
5. JOINs: Implemented INNER, LEFT, RIGHT, and FULL OUTER JOIN (via UNION).

Sample Insights
1. Top 10 customers by total spend.
2. Most sold product categories.
3. Average spend by gender and location.
4. Customers spending more than the average.

Advanced Features
1. View: high_spenders – Easily query customers with total spend over ₹5000.
2. Indexing: Improved performance on CustomerID and Location.

File Included
Task4.sql – Complete SQL script with all queries used.
