-- 1. Total Sales and Profit by Region
SELECT Region, 
       SUM(Sales) AS Total_Sales, 
       SUM(Profit) AS Total_Profit
FROM Orders
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 2. Top 10 Products by Sales
SELECT Product_Name, 
       SUM(Sales) AS Total_Sales
FROM Orders
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 3. Average Discount by Category
SELECT Category, 
       AVG(Discount) AS Avg_Discount
FROM Orders
GROUP BY Category;

-- 4. Profitability by Sub-Category
SELECT Sub_Category, 
       SUM(Sales) AS Total_Sales, 
       SUM(Profit) AS Total_Profit, 
       ROUND(SUM(Profit)/SUM(Sales)*100,2) AS Profit_Margin_Percentage
FROM Orders
GROUP BY Sub_Category
ORDER BY Profit_Margin_Percentage DESC;

-- 5. Monthly Sales Trend
-- (works if your SQL dialect supports DATE_FORMAT, otherwise adjust)
SELECT DATE_FORMAT(Order_Date, '%Y-%m') AS Month, 
       SUM(Sales) AS Monthly_Sales
FROM Orders
GROUP BY Month
ORDER BY Month;
