-- BDAT 605: Database Principles 

/*
Modify the solution to exercise 4 so it only counts and totals line items 
	that have an ItemPrice value that’s greater than 400.
*/

USE MyGuitarShop;
GO

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