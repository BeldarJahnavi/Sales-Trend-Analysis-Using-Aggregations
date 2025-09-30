SQL Aggregation and Grouping Analysis on Online Sales
📌 Overview

This project demonstrates the use of SQL aggregation functions such as SUM() and COUNT(), combined with GROUP BY and ORDER BY clauses, to analyze online sales transaction data. The dataset focuses on order-level data and enables analysis of revenue and order volume across different time dimensions.

The goal is to extract business insights from a structured relational table containing online sales data.

📂 Dataset Structure

The database contains a single primary table:

online_sales

Stores information about each online order.

Column	Description
order_id	Unique ID for each order (Primary Key)
order_date	Date when the order was placed
amount	Total value of the order (in USD)
product_id	ID of the product ordered
🛠 Features of the Queries

The SQL queries provided in this project focus on time-based sales aggregation to analyze business trends:

📅 Monthly Sales Performance

Aggregates revenue and order count by year and month

Helps track growth trends and seasonal performance

📆 Yearly Revenue Trends

Aggregated revenue and order volume by year

Useful for understanding long-term business performance

📊 Month-Wise Comparisons (Across Years)

Groups sales by calendar month (January to December) across all years

Enables detection of recurring seasonal patterns

🏆 Top Performing Months

Identifies the top 5 months with the highest revenue

Supports marketing, inventory, and campaign planning

📈 Why These Queries Matter

These SQL queries help answer real-world business questions, such as:

Which months generate the most revenue?

How does performance vary year-over-year?

Are there specific months that consistently underperform or overperform?

What are our most profitable months?

By applying aggregation and grouping logic, this project turns raw transactional data into actionable insights for decision-makers in sales, marketing, and operations.
