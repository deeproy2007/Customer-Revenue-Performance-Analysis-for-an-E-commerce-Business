SELECT * FROM ecommerce.ecommerce;
use ecommerce;
-- 1. Business Problem: Why are sales declining month over month?
-- SQL – Monthly Revenue Trend
SELECT
    EXTRACT(YEAR FROM date) AS year,
    EXTRACT(MONTH FROM date) AS month,
    SUM(total_amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM ecommerce
GROUP BY year, month
ORDER BY year, month;
-- Business Problem: Which product categories generate the most revenue?
-- SQL – Category Performance
SELECT 
    Product_Category,
    SUM(Total_Amount) AS revenue,
    COUNT(Order_ID) AS orders
FROM
    ecommerce
GROUP BY Product_Category
ORDER BY revenue DESC;
-- Business Problem: Are discounts actually increasing sales?
-- SQL – Discount vs Revenue
SELECT 
    CASE
        WHEN Discount_Amount > 0 THEN 'Discounted'
        ELSE 'no discount'
    END AS discount_flag,
    COUNT(Order_ID) AS orders,
    AVG(Total_Amount) AS revenue
FROM
    ecommerce
GROUP BY discount_flag;
-- Business Problem: Which cities drive the highest revenue?
-- SQL – City-wise Revenue
SELECT 
    City, SUM(Total_Amount) AS revenue
FROM
    ecommerce
GROUP BY City
ORDER BY revenue DESC
LIMIT 10;
-- Business Problem: Who are the high-value customers?
-- SQL – Top Customers by Spend
SELECT
    Customer_ID,
    SUM(Total_Amount) AS lifetime_value,
    COUNT(Order_ID) AS total_orders
FROM ecommerce
GROUP BY Customer_ID
ORDER BY lifetime_value DESC
LIMIT 10;
-- Business Problem: Does delivery time affect customer ratings?
-- SQL – Delivery Time vs Rating
SELECT 
    Delivery_Time_Days, AVG(Customer_Rating) AS avg_ra
FROM
    ecommerce
GROUP BY Delivery_Time_Days
ORDER BY Delivery_Time_Days;
-- Business Problem: Which payment method is most preferred?
-- SQL – Payment Method Usage
SELECT 
    Payment_Method,
    SUM(Total_Amount) AS revenue,
    COUNT(Order_ID) AS total_orders
FROM
    ecommerce
GROUP BY Payment_Method
ORDER BY revenue DESC;
-- . Business Problem: Are repeat customers contributing more revenue?
-- SQL – New vs Returning Customers
SELECT
    Is_Returning_Customer,
    SUM(Total_Amount) AS revenue,
    COUNT(Order_ID) AS total_orders
FROM ecommerce
GROUP BY Is_Returning_Customer
ORDER BY revenue DESC;
-- Business Problem: Which device type converts better?
-- SQL – Device Performance
SELECT 
    Device_Type,
    SUM(Total_Amount) AS revenue,
    COUNT(Order_ID) AS total_orders
FROM
    ecommerce
GROUP BY Device_Type;
-- Business Problem: What KPIs should leadership track?
-- SQL – Core KPIs

SELECT 
    SUM(Total_Amount) AS total_revenue,
    COUNT(DISTINCT Order_ID) AS total_orders,
    COUNT(DISTINCT Customer_ID) AS total_customers,
    AVG(Total_Amount) AS avg_order_value
FROM
    ecommerce;
