CREATE DATABASE salesdb;
USE salesdb;
CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    product_id INT NOT NULL
);
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-15', 250.00, 101),
(2, '2023-01-20', 300.00, 102),
(3, '2023-02-05', 150.00, 103),
(4, '2023-02-25', 400.00, 101),
(5, '2023-03-10', 500.00, 104),
(6, '2023-03-22', 350.00, 102),
(7, '2023-04-05', 200.00, 105),
(8, '2023-05-11', 700.00, 101),
(9, '2023-06-17', 450.00, 103),
(10, '2023-06-30', 600.00, 104),
(11, '2024-01-10', 800.00, 101),
(12, '2024-02-14', 550.00, 102),
(13, '2024-02-20', 400.00, 103),
(14, '2024-03-08', 900.00, 104),
(15, '2024-03-25', 750.00, 105);
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
SELECT  
    DATE_FORMAT(order_date, '%Y-%m') AS yearmonth,  
    SUM(amount) AS total_revenue,  
    COUNT(DISTINCT order_id) AS order_volume  
FROM online_sales  
GROUP BY DATE_FORMAT(order_date, '%Y-%m')  
ORDER BY yearmonth;
SELECT  
    YEAR(order_date) AS order_year,  
    SUM(amount) AS total_revenue,  
    COUNT(DISTINCT order_id) AS order_volume  
FROM online_sales  
GROUP BY YEAR(order_date)  
ORDER BY order_year;
SELECT  
    MONTH(order_date) AS order_month,  
    SUM(amount) AS total_revenue,  
    COUNT(DISTINCT order_id) AS order_volume  
FROM online_sales  
GROUP BY MONTH(order_date)  
ORDER BY order_month;
SELECT  
    DATE_FORMAT(order_date, '%Y-%m') AS yearmonth,  
    SUM(amount) AS total_revenue,  
    COUNT(DISTINCT order_id) AS order_volume  
FROM online_sales  
GROUP BY DATE_FORMAT(order_date, '%Y-%m')  
ORDER BY total_revenue DESC  
LIMIT 5;











