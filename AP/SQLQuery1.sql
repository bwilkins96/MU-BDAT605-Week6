-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns all columns from the Vendors table inner-joined with the Invoices table.
*/

USE AP;
GO

SELECT *
FROM Vendors JOIN Invoices
	ON Vendors.VendorID = Invoices.VendorID;