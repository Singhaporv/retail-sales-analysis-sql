-- OVERALL BUSINESS KPIs
USE retail_analysis;

SELECT
    COUNT(*) AS total_transactions,
    COUNT(DISTINCT Customer_ID) AS total_customers,
    SUM(Quantity) AS total_units_sold,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit,
    ROUND(AVG(Sales),2) AS average_order_value
FROM retail_sales;
