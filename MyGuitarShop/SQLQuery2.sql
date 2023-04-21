-- BDAT 605: Database Principles 

/* 
Write a SELECT statement that joins the Customers table to the Addresses table and returns these columns: 
	FirstName, LastName, Line1, City, State, ZipCode.

Return one row for each address for the customer with an email address of allan.sherwood@yahoo.com.
*/

USE MyGuitarShop;
GO

SELECT FirstName, LastName, Line1, City, State, ZipCode
FROM Customers JOIN Addresses 
	ON Customers.CustomerID = Addresses.CustomerID
WHERE EmailAddress = 'allan.sherwood@yahoo.com';
