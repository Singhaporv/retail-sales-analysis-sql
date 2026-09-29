-- RETAIL SALES ANALYSIS | DATABASE SETUP
CREATE DATABASE IF NOT EXISTS retail_analysis;
USE retail_analysis;

CREATE TABLE IF NOT EXISTS retail_sales (
    Order_ID VARCHAR(20) PRIMARY KEY,
    Order_Date DATE,
    Customer_ID VARCHAR(20),
    Customer_Name VARCHAR(100),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(150),
    Quantity INT,
    Discount DECIMAL(5,2),
    Region VARCHAR(30),
    City VARCHAR(50),
    Sales DECIMAL(12,2),
    Cost DECIMAL(12,2),
    Profit DECIMAL(12,2)
);
