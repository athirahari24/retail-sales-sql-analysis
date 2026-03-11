## Key SQL Queries

### Top 10 Stores by Sales

SELECT Store_ID, Store_Sales
FROM store_sales
ORDER BY Store_Sales DESC
LIMIT 10;

### Average Sales by Store Area

SELECT Store_Area, AVG(Store_Sales) AS Avg_Sales
FROM store_sales
GROUP BY Store_Area;

## Key Insights

• Stores with higher daily customer traffic tend to generate higher sales.
• High-performing stores (sales > 80,000) represent a small portion of the dataset but contribute significantly to revenue.
• Store area appears to influence sales performance in several cases.
