-- DATA VALIDATION
USE retail_analysis;

SELECT COUNT(*) AS total_records FROM retail_sales;

SELECT MIN(Order_Date) AS first_order,
       MAX(Order_Date) AS last_order
FROM retail_sales;

SELECT
    SUM(Order_ID IS NULL) AS missing_order_id,
    SUM(Order_Date IS NULL) AS missing_order_date,
    SUM(Customer_ID IS NULL) AS missing_customer_id,
    SUM(Category IS NULL) AS missing_category,
    SUM(Product_Name IS NULL) AS missing_product,
    SUM(Sales IS NULL) AS missing_sales,
    SUM(Profit IS NULL) AS missing_profit
FROM retail_sales;
