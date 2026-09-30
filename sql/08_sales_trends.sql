-- SALES TRENDS
USE retail_analysis;

-- Monthly sales and profit
SELECT YEAR(Order_Date) AS year,
       MONTH(Order_Date) AS month,
       ROUND(SUM(Sales),2) AS total_sales,
       ROUND(SUM(Profit),2) AS total_profit
FROM retail_sales
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY year, month;

-- Month-over-month growth
WITH monthly_sales AS (
    SELECT DATE_FORMAT(Order_Date,'%Y-%m') AS month,
           SUM(Sales) AS total_sales
    FROM retail_sales
    GROUP BY DATE_FORMAT(Order_Date,'%Y-%m')
)
SELECT month,
       ROUND(total_sales,2) AS total_sales,
       ROUND(LAG(total_sales) OVER (ORDER BY month),2) AS previous_month_sales,
       ROUND(
           (total_sales - LAG(total_sales) OVER (ORDER BY month))
           / NULLIF(LAG(total_sales) OVER (ORDER BY month),0) * 100, 2
       ) AS mom_growth_pct
FROM monthly_sales
ORDER BY month;

-- Year-over-year growth
WITH yearly_sales AS (
    SELECT YEAR(Order_Date) AS year, SUM(Sales) AS total_sales
    FROM retail_sales
    GROUP BY YEAR(Order_Date)
)
SELECT year,
       ROUND(total_sales,2) AS total_sales,
       ROUND(LAG(total_sales) OVER (ORDER BY year),2) AS previous_year_sales,
       ROUND(
           (total_sales - LAG(total_sales) OVER (ORDER BY year))
           / NULLIF(LAG(total_sales) OVER (ORDER BY year),0) * 100, 2
       ) AS yoy_growth_pct
FROM yearly_sales
ORDER BY year;
