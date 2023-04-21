-- BDAT 605: Database Principles 

/* 
Write a SELECT statement that joins the Categories table to the Products table and returns these columns: 
	CategoryName, ProductName, ListPrice.
Sort the result set by CategoryName and then by ProductName in ascending order.
*/

USE MyGuitarShop;
GO

SELECT CategoryName, ProductName, ListPrice
FROM Categories JOIN Products
	ON Categories.CategoryID = Products.CategoryID
ORDER BY CategoryName, ProductName;