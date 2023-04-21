-- BDAT 605: Database Principles 

/* SQL Scripts for the My Guitar Shop Exercises - Part 6 */

USE MyGuitarShop;
GO

/* Part A */
-- 1 ---------------------------------------
SELECT CategoryName, ProductName, ListPrice
FROM Categories JOIN Products
	ON Categories.CategoryID = Products.CategoryID
ORDER BY CategoryName, ProductName;

-- 2 ---------------------------------------
SELECT FirstName, LastName, Line1, City, State, ZipCode
FROM Customers JOIN Addresses 
	ON Customers.CustomerID = Addresses.CustomerID
WHERE EmailAddress = 'allan.sherwood@yahoo.com';

-- 3 ---------------------------------------
SELECT FirstName, LastName, Line1, City, State, ZipCode
FROM Customers JOIN Addresses
	ON Customers.ShippingAddressID = Addresses.AddressID;

-- 4 ---------------------------------------
SELECT LastName, FirstName, OrderDate, ProductName, 
	   ItemPrice, DiscountAmount, Quantity
FROM Customers c JOIN Orders o
	ON c.CustomerID = o.OrderID
JOIN OrderItems oi
	ON o.OrderID = oi.OrderID
JOIN Products p
	ON oi.ProductID = p.ProductID
ORDER BY LastName, OrderDate, ProductName;

-- 5 ---------------------------------------
SELECT p1.ProductName, p1.ListPrice
FROM Products p1 JOIN Products p2
	ON p1.ProductID <> p2.ProductID
		AND p1.ListPrice = p2.ListPrice
ORDER BY ProductName;

-- 6 ---------------------------------------
SELECT CategoryName, ProductID
FROM Categories LEFT JOIN Products
	ON Categories.CategoryID = Products.CategoryID
WHERE ProductID IS NULL;


/* Part B */
-- 1 ---------------------------------------
SELECT COUNT(*) AS NumOrders, SUM(TaxAmount) AS SumTaxes
FROM Orders;

-- 2 ---------------------------------------
SELECT CategoryName, Count(ProductName) AS ProductCount, MAX(ListPrice) AS MaxPrice
FROM Categories JOIN Products
	ON Categories.CategoryID = Products.CategoryID
GROUP BY CategoryName
ORDER BY ProductCount DESC;

-- 3 ---------------------------------------
SELECT EmailAddress, SUM(ItemPrice*Quantity) AS TotalItemPrice, 
	   SUM(DiscountAmount*Quantity) AS TotalDiscount
FROM Customers JOIN Orders
	ON Customers.CustomerID = Orders.CustomerID
JOIN OrderItems
	ON Orders.OrderID = OrderItems.OrderID
GROUP BY EmailAddress
ORDER BY TotalItemPrice DESC;

-- 4 ---------------------------------------
SELECT EmailAddress, COUNT(Orders.OrderID) AS NumOrders, 
	   SUM( (ItemPrice - DiscountAmount) * Quantity ) AS TotalAmount
FROM Customers JOIN Orders
	ON Customers.CustomerID = Orders.CustomerID
JOIN OrderItems
	ON Orders.OrderID = OrderItems.OrderID
GROUP BY EmailAddress
HAVING COUNT(Orders.OrderID) > 1
ORDER BY TotalAmount DESC;

-- 5 ---------------------------------------
SELECT EmailAddress, COUNT(Orders.OrderID) AS NumOrders, 
	   SUM( (ItemPrice - DiscountAmount) * Quantity ) AS TotalAmount
FROM Customers JOIN Orders
	ON Customers.CustomerID = Orders.CustomerID
JOIN OrderItems
	ON Orders.OrderID = OrderItems.OrderID
WHERE ItemPrice > 400
GROUP BY EmailAddress
HAVING COUNT(Orders.OrderID) > 1
ORDER BY TotalAmount DESC;