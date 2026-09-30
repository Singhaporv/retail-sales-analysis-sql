-- ADVANCED ANALYSIS
USE retail_analysis;

-- Category sales contribution
WITH category_sales AS (
    SELECT Category, SUM(Sales) AS total_sales
    FROM retail_sales
    GROUP BY Category
)
SELECT Category,
       ROUND(total_sales,2) AS total_sales,
       ROUND(total_sales / SUM(total_sales) OVER () * 100,2) AS sales_share_pct
FROM category_sales
ORDER BY total_sales DESC;

-- Discount vs profitability
SELECT Discount,
       COUNT(*) AS total_transactions,
       ROUND(AVG(Sales),2) AS avg_sales,
       ROUND(AVG(Profit),2) AS avg_profit
FROM retail_sales
GROUP BY Discount
ORDER BY Discount;
