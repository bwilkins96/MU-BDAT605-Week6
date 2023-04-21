-- BDAT 605: Database Principles 

/* 
Write a SELECT statement that joins the Customers table to the Addresses table and returns these columns: 
	FirstName, LastName, Line1, City, State, ZipCode.

Return one row for each customer, but only return addresses that are the shipping address for a customer.
*/

USE MyGuitarShop;
GO

SELECT FirstName, LastName, Line1, City, State, ZipCode
FROM Customers JOIN Addresses
	ON Customers.ShippingAddressID = Addresses.AddressID;
