-- PRODUCT ANALYSIS
USE retail_analysis;

-- Top 10 products
SELECT Product_Name, Category, Sub_Category,
       SUM(Quantity) AS units_sold,
       ROUND(SUM(Sales),2) AS total_sales,
       ROUND(SUM(Profit),2) AS total_profit
FROM retail_sales
GROUP BY Product_Name, Category, Sub_Category
ORDER BY total_sales DESC
LIMIT 10;

-- Top product in each category
WITH product_sales AS (
    SELECT Category, Product_Name, SUM(Sales) AS total_sales
    FROM retail_sales
    GROUP BY Category, Product_Name
),
ranked_products AS (
    SELECT Category, Product_Name, total_sales,
           ROW_NUMBER() OVER (
               PARTITION BY Category ORDER BY total_sales DESC
           ) AS product_rank
    FROM product_sales
)
SELECT Category, Product_Name, ROUND(total_sales,2) AS total_sales
FROM ranked_products
WHERE product_rank = 1
ORDER BY total_sales DESC;
