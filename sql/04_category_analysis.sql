-- CATEGORY ANALYSIS
USE retail_analysis;

SELECT
    Category,
    COUNT(*) AS total_transactions,
    SUM(Quantity) AS total_units_sold,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit,
    ROUND(SUM(Profit)/SUM(Sales)*100,2) AS profit_margin_pct
FROM retail_sales
GROUP BY Category
ORDER BY total_sales DESC;
