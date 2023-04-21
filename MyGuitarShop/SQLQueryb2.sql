-- BDAT 605: Database Principles 

/* 
Write a SELECT statement that returns one row for each category that has products with these columns:
	The CategoryName column from the Categories table
	The count of the products in the Products table
	The list price of the most expensive product in the Products table

Sort the result set so the category with the most products appears first.
*/

USE MyGuitarShop;
GO

SELECT CategoryName, Count(ProductName) AS ProductCount, MAX(ListPrice) AS MaxPrice
FROM Categories JOIN Products
	ON Categories.CategoryID = Products.CategoryID
GROUP BY CategoryName
ORDER BY ProductCount DESC;