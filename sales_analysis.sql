CREATE DATABASE retailstore_db;
USE retailstore_db;
CREATE TABLE store_sales(
  Store_ID INT,
  Store_Area INT,
  Items_Available INT,
  Daily_Customer_Count INT,
  Store_Sales INT);
SHOW TABLES;
SELECT COUNT(*) FROM store_sales;
SELECT SUM(Store_Sales) AS Total_Sales FROM store_sales;
SELECT AVG(Store_Sales) AS Average_Sales FROM store_sales;
SELECT Store_ID, Store_Sales FROM store_sales ORDER BY Store_Sales DESC LIMIT 1;
SELECT Store_ID, Store_Sales FROM store_sales ORDER BY Store_Sales ASC LIMIT 1;
SELECT Store_ID, Store_Sales FROM store_sales ORDER BY Store_Sales DESC LIMIT 10;
SELECT Store_ID, Daily_Customer_Count FROM store_sales WHERE Daily_Customer_Count>1000;
SELECT Store_Area, AVG(Store_Sales) AS Average_Sales FROM store_sales GROUP BY Store_Area ORDER BY Average_Sales DESC;
SELECT Store_ID, Store_Sales FROM store_sales WHERE Store_Sales > (SELECT AVG(Store_Sales)FROM store_sales);
SELECT Store_ID, Store_Sales,
    CASE
        WHEN Store_Sales >= 80000 THEN 'High Sales'
        WHEN Store_Sales >= 50000 THEN 'Medium Sales'
        ELSE 'Low Sales'
    END AS Sales_Category
FROM store_sales;
SELECT Daily_Customer_Count,AVG(Store_Sales) AS Avg_Sales FROM store_sales GROUP BY Daily_Customer_Count 
ORDER BY Avg_Sales DESC;
SELECT Store_ID,Store_Sales,
    RANK() OVER (ORDER BY Store_Sales DESC) AS Sales_Rank
FROM store_sales;