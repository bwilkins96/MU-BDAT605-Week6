-- BDAT 605: Database Principles 

/* 
Write a SELECT statement that returns these two columns:
CategoryName                The CategoryName column from the Categories table
ProductID                   The ProductID column from the Products table

Return one row for each category that has never been used. 
Hint: Use an outer join and only return rows where the ProductID column contains a null value.
*/

USE MyGuitarShop;
GO

SELECT CategoryName, ProductID
FROM Categories LEFT JOIN Products
	ON Categories.CategoryID = Products.CategoryID
WHERE ProductID IS NULL;