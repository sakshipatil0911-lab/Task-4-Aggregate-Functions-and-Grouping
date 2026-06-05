USE EcommerceDB;

-- 1. Count total customers
SELECT COUNT(*) AS Total_Customers
FROM Customers;

-- 2. Count customers having email
SELECT COUNT(email) AS Customers_With_Email
FROM Customers;

-- 3. Find total stock available
SELECT SUM(stock) AS Total_Stock
FROM Products;

-- 4. Find average product price
SELECT AVG(price) AS Average_Price
FROM Products;

-- 5. Find maximum product price
SELECT MAX(price) AS Highest_Price
FROM Products;

-- 6. Find minimum product price
SELECT MIN(price) AS Lowest_Price
FROM Products;

-- 7. Count products by stock quantity
SELECT stock, COUNT(*) AS Number_Of_Products
FROM Products
GROUP BY stock;

-- 8. Total quantity ordered for each product
SELECT product_id,
       SUM(quantity) AS Total_Quantity
FROM Order_Items
GROUP BY product_id;

-- 9. Number of orders placed by each customer
SELECT customer_id,
       COUNT(*) AS Total_Orders
FROM Orders
GROUP BY customer_id;

-- 10. Average quantity ordered per order
SELECT order_id,
       AVG(quantity) AS Average_Quantity
FROM Order_Items
GROUP BY order_id;

-- 11. Groups having total quantity greater than 1
SELECT product_id,
       SUM(quantity) AS Total_Quantity
FROM Order_Items
GROUP BY product_id
HAVING SUM(quantity) > 1;

-- 12. Count distinct stock values
SELECT COUNT(DISTINCT stock) AS Distinct_Stock_Count
FROM Products;

-- 13. Round average price to 2 decimal places
SELECT ROUND(AVG(price), 2) AS Rounded_Average_Price
FROM Products;