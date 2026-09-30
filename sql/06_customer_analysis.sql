-- CUSTOMER ANALYSIS
USE retail_analysis;

-- Top 10 customers
SELECT Customer_ID, Customer_Name,
       COUNT(*) AS total_orders,
       ROUND(SUM(Sales),2) AS total_sales,
       ROUND(SUM(Profit),2) AS total_profit
FROM retail_sales
GROUP BY Customer_ID, Customer_Name
ORDER BY total_sales DESC
LIMIT 10;

-- Repeat customers
SELECT Customer_ID, Customer_Name, COUNT(*) AS total_orders
FROM retail_sales
GROUP BY Customer_ID, Customer_Name
HAVING COUNT(*) > 1
ORDER BY total_orders DESC;

-- Number of repeat customers
SELECT COUNT(*) AS repeat_customers
FROM (
    SELECT Customer_ID
    FROM retail_sales
    GROUP BY Customer_ID
    HAVING COUNT(*) > 1
) AS repeat_customer_list;

-- Highest-value customer by region
WITH customer_region AS (
    SELECT Region, Customer_ID, SUM(Sales) AS total_sales
    FROM retail_sales
    GROUP BY Region, Customer_ID
),
ranked_customers AS (
    SELECT Region, Customer_ID, total_sales,
           ROW_NUMBER() OVER (
               PARTITION BY Region ORDER BY total_sales DESC
           ) AS customer_rank
    FROM customer_region
)
SELECT Region, Customer_ID, ROUND(total_sales,2) AS total_sales
FROM ranked_customers
WHERE customer_rank = 1
ORDER BY Region;
