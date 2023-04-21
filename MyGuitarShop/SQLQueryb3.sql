-- BDAT 605: Database Principles 

/* 
Write a SELECT statement that returns one row for each customer that has orders with these columns:
	The EmailAddress column from the Customers table
	The sum of the item price in the OrderItems table multiplied by the quantity in the OrderItems table
	The sum of the discount amount column in the OrderItems table multiplied by the quantity in the OrderItems table

Sort the result set in descending sequence by the item price total for each customer.
*/

USE MyGuitarShop;
GO

SELECT EmailAddress, SUM(ItemPrice*Quantity) AS TotalItemPrice, 
	   SUM(DiscountAmount*Quantity) AS TotalDiscount
FROM Customers JOIN Orders
	ON Customers.CustomerID = Orders.CustomerID
JOIN OrderItems
	ON Orders.OrderID = OrderItems.OrderID
GROUP BY EmailAddress
ORDER BY TotalItemPrice DESC;