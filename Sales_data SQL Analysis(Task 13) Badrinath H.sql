SELECT * FROM supermarket.sales_data;

-- 1)Total Sales and Gross Income by City --
SELECT City, 
       SUM(Total) AS Total_Sales, 
       SUM('gross income') AS Total_Gross_Income
FROM sales_data
GROUP BY City;

-- 2)Average Rating by Product Line --
SELECT 'Product_line', 
       AVG(Rating) AS Average_Rating
FROM sales_data
GROUP BY 'Product line';

-- 3)Sales Distribution by Customer Type --
SELECT 'Customer type', 
       COUNT('Invoice ID') AS Total_Sales,
       SUM(Total) AS Total_Amount
FROM sales_data
GROUP BY 'Customer type';

-- 4) Total Sales and Gross Income by Branch --

SELECT Payment, 
       COUNT('Invoice ID') AS Total_Sales, 
       SUM(Total) AS Total_Amount
FROM sales_data
GROUP BY Payment;

-- 5) Monthly Sales Trend --

SELECT DATE_FORMAT(Date, '%Y-%m') AS Month, 
       SUM(Total) AS Monthly_Sales
FROM sales_data
GROUP BY Month
ORDER BY Month;

-- 6) Customer Rating Analysis by Branch --

SELECT Branch, 
       AVG(Rating) AS Average_Rating,
       MAX(Rating) AS Highest_Rating, 
       MIN(Rating) AS Lowest_Rating
FROM sales_data
GROUP BY Branch;

-- 7) Average Quantity and Total Sales by Gender --

SELECT Gender, 
       AVG(Quantity) AS Average_Quantity, 
       SUM(Total) AS Total_Sales
FROM sales_data
GROUP BY Gender;

-- 9)  Daily Sales Summary --

SELECT Date, 
       COUNT('Invoice ID') AS Number_of_Sales, 
       SUM(Total) AS Total_Sales
FROM sales_data
GROUP BY Date
ORDER BY Date;

-- 10) Top 3 Cities with Highest Sales --

SELECT City, 
       SUM(Total) AS Total_Sales
FROM sales_data
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 3;











