------ select everything from the dataset
SELECT * FROM database.`Superstore database`;

------What are the top 10 products by total sales and how do they compare in profit?
SELECT Product.Name, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM Superstore_Data
GROUP BY Product.Name
ORDER BY Total_Sales DESC
LIMIT 10;

-------How does total revenue vary by customer segment?
SELECT Customer.Segment, SUM(Total_Revenue) AS Total_Revenue
FROM Superstore_Data
GROUP BY Customer.Segment;

------What is the average discount percentage applied across different categories?
SELECT Category, AVG(Discount) AS Average_Discount
FROM Superstore_Data
GROUP BY Category;

------Which regions generate the highest sales and how do they compare in profit margin?
SELECT Region, SUM(Sales) AS Total_Sales, AVG(Profit.Margin) AS Average_Profit_Margin
FROM Superstore_Data
GROUP BY Region
ORDER BY Total_Sales DESC;

------What is the total quantity sold per product category?
SELECT Category, SUM(Quantity) AS Total_Quantity_Sold
FROM Superstore_Data
GROUP BY Category;

------How many unique customers are there in each state?
SELECT State, COUNT(DISTINCT Customer.ID) AS Unique_Customers
FROM Superstore_Data
GROUP BY State;

------What is the total profit generated per state?
SELECT State, SUM(Profit) AS Total_Profit
FROM Superstore_Data
GROUP BY State;

------What is the average profit per order?
SELECT AVG(Profit) AS Average_Profit_Per_Order
FROM Superstore_Data;

------What are the trends in total sales over the past few years?
SELECT Year, SUM(Sales) AS Total_Sales
FROM Superstore_Data
GROUP BY Year
ORDER BY Year;

------Which customer segments receive the highest discounts?
SELECT Customer.Segment, AVG(Discount) AS Average_Discount
FROM Superstore_Data
GROUP BY Customer.Segment;

------Which product categories yield the highest profit margins?
SELECT Category, AVG(Profit.Margin) AS Average_Profit_Margin
FROM Superstore_Data
GROUP BY Category
ORDER BY Average_Profit_Margin DESC;

------What are the sales trends by customer loyalty score, and how do they affect overall revenue?
SELECT Customer_Loyalty_Score, SUM(Sales) AS Total_Sales
FROM Superstore_Data
GROUP BY Customer_Loyalty_Score;

------How does seasonality affect the sales and profit for top-selling products?
SELECT MONTH(Order.Date) AS Month, Product.Name, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM Superstore_Data
GROUP BY MONTH(Order.Date), Product.Name;

------What are the implications of discount strategies on sales growth and profit margins?
SELECT Discount_Percentage, SUM(Sales) AS Total_Sales, AVG(Profit.Margin) AS Average_Profit_Margin
FROM Superstore_Data
GROUP BY Discount_Percentage;

------Which regions show the greatest potential for revenue growth based on historical sales data?
SELECT Region, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM Superstore_Data
GROUP BY Region
ORDER BY Total_Sales DESC;

------How do shipping costs correlate with profit margins across different categories?
SELECT Category, SUM(Shipping.Cost) AS Total_Shipping_Cost, AVG(Profit.Margin) AS Average_Profit_Margin
FROM Superstore_Data
GROUP BY Category;

------What is the impact of customer segment characteristics on average order value?
SELECT Customer.Segment, AVG(Average_Order_Value) AS Average_Order_Value
FROM Superstore_Data
GROUP BY Customer.Segment;

------How do order fulfillment times affect customer satisfaction and repeat purchase rates?
SELECT AVG(Order_Fullfilment_Time) AS Average_Fulfillment_Time, Customer_Loyalty_Score, COUNT(Order.ID) AS Total_Orders
FROM Superstore_Data
GROUP BY Customer_Loyalty_Score;

------What products or categories should be prioritized for marketing based on their sales growth potential?
SELECT Product.Name, Year, SUM(Sales) AS Total_Sales
FROM Superstore_Data
GROUP BY Product.Name, Year
ORDER BY Total_Sales DESC;

------What are the key factors contributing to high shipping efficiency?
SELECT Category, AVG(Shipping.Efficiency) AS Average_Shipping_Efficiency
FROM Superstore_Data
GROUP BY Category;
