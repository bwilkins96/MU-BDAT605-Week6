-- BDAT 605: Database Principles 

/* 
Write a SELECT statement that returns the ProductName and ListPrice columns from the Products table.
Return one row for each product that has the same list price as another product. 

Hint: Use a self-join to check that the ProductID columns aren’t equal but the ListPrice column is equal.
Sort the result set by ProductName.
*/

USE MyGuitarShop;
GO

SELECT p1.ProductName, p1.ListPrice
FROM Products p1 JOIN Products p2
	ON p1.ProductID <> p2.ProductID
		AND p1.ListPrice = p2.ListPrice
ORDER BY ProductName;