-- BDAT 605: Database Principles 

/* 
Write a SELECT statement that joins the Customers, Orders, OrderItems, and Products tables. 
This statement should return these columns: 
	LastName, FirstName, OrderDate, ProductName, ItemPrice, DiscountAmount, and Quantity.

Use aliases for the tables.
Sort the final result set by LastName, OrderDate, and ProductName.
*/

USE MyGuitarShop;
GO

SELECT LastName, FirstName, OrderDate, ProductName, 
	   ItemPrice, DiscountAmount, Quantity
FROM Customers c JOIN Orders o
	ON c.CustomerID = o.OrderID
JOIN OrderItems oi
	ON o.OrderID = oi.OrderID
JOIN Products p
	ON oi.ProductID = p.ProductID
ORDER BY LastName, OrderDate, ProductName;