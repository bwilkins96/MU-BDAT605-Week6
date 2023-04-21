-- BDAT 605: Database Principles 

/* 
Write a SELECT statement that returns one row for each customer that has orders with these columns:
	The EmailAddress column from the Customers table
	A count of the number of orders
	The total amount for each order (Hint: First, subtract the discount amount from the price. Then, multiply by the quantity.)

Return only those rows where the customer has more than than 1 order.
Sort the result set in descending sequence by the sum of the line item amounts.
*/

USE MyGuitarShop;
GO

SELECT EmailAddress, COUNT(Orders.OrderID) AS NumOrders, 
	   SUM( (ItemPrice - DiscountAmount) * Quantity ) AS TotalAmount
FROM Customers JOIN Orders
	ON Customers.CustomerID = Orders.CustomerID
JOIN OrderItems
	ON Orders.OrderID = OrderItems.OrderID
GROUP BY EmailAddress
HAVING COUNT(Orders.OrderID) > 1
ORDER BY TotalAmount DESC;