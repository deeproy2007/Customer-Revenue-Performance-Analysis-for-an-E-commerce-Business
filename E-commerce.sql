SELECT * FROM ecommerce.ecommerce;
create database ecommerce;
use ecommerce;
-- 1. Business Problem: Why are sales declining month over month?

WITH monthly_sales AS (
    SELECT
        CAST(DATE_FORMAT(Date,'%Y-%m-01') AS DATETIME) AS MONTH,
        SUM(total_amount) AS revenue
    FROM ecommerce
    GROUP BY month
)
SELECT
    month,
    revenue,
    LAG(revenue) OVER (ORDER BY month) AS prev_month_revenue,
    revenue - LAG(revenue) OVER (ORDER BY month) AS mom_change
FROM monthly_sales;

-- Business Problem: Are discounts actually increasing sales?

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

SELECT 
    City, SUM(Total_Amount) AS revenue
FROM
    ecommerce
GROUP BY City
ORDER BY revenue DESC
LIMIT 10;
-- Business Problem: Who are the high-value customers?

SELECT
    Customer_ID,
    SUM(Total_Amount) AS lifetime_value,
    DENSE_RANK() OVER (ORDER BY SUM(Total_Amount) DESC) AS DE_RNK
FROM ecommerce
GROUP BY Customer_ID;

-- Business Problem: Does delivery time affect customer ratings?

SELECT 
    Delivery_Time_Days, AVG(Customer_Rating) AS avg_ra
FROM
    ecommerce
GROUP BY Delivery_Time_Days
ORDER BY Delivery_Time_Days;
-- Business Problem: Which payment method is most preferred?

SELECT 
    Payment_Method,
    SUM(Total_Amount) AS revenue,
    COUNT(Order_ID) AS total_orders
FROM
    ecommerce
GROUP BY Payment_Method
ORDER BY revenue DESC;
-- . Business Problem: Are repeat customers contributing more revenue?
SELECT
    Is_Returning_Customer,
    SUM(Total_Amount) AS revenue,
    COUNT(Order_ID) AS total_orders
FROM ecommerce
GROUP BY Is_Returning_Customer
ORDER BY revenue DESC;
-- Business Problem: Which device type converts better?
SELECT 
    Device_Type,
    SUM(Total_Amount) AS revenue,
    COUNT(Order_ID) AS total_orders
FROM
    ecommerce
GROUP BY Device_Type;
-- Business Problem: What KPIs should leadership track?

SELECT 
    SUM(Total_Amount) AS total_revenue,
    COUNT(DISTINCT Order_ID) AS total_orders,
    COUNT(DISTINCT Customer_ID) AS total_customers,
    AVG(Total_Amount) AS avg_order_value
FROM
    ecommerce;
-- Business problem: How is revenue accumulating over time?    
SELECT
    date,
    SUM(total_amount) AS daily_revenue,
    SUM(SUM(total_amount)) OVER (
        ORDER BY date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_revenue
FROM ecommerce
GROUP BY date
ORDER BY date;

-- Business problem: Which categories perform best?
SELECT
    product_category,
    SUM(total_amount) AS revenue,
    RANK() OVER (ORDER BY SUM(total_amount) DESC) AS revenue_rank
FROM ecommerce
GROUP BY product_category;

-- Business problem: Which cities have slower deliveries?
SELECT 
     City,
     Delivery_Time_Days,
	 rank() over  
        (partition by City order by Delivery_Time_Days desc) as rnk
from ecommerce; 

-- Identify High-Value Orders (Percentile)
SELECT
    order_id,
    total_amount,
    NTILE(4) OVER (ORDER BY total_amount DESC) AS quartile
FROM ecommerce;