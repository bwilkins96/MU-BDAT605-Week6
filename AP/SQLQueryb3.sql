-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns three columns: VendorName, InvoiceCount, and InvoiceSum. 
InvoiceCount is the count of the number of invoices, and InvoiceSum is the sum of the InvoiceTotal column. 

Group the result set by vendor. 
Sort the result set so that the vendor with the highest number of invoices appears first.
*/

USE AP;
GO

SELECT VendorName, COUNT(*) AS InvoiceCount, SUM(InvoiceTotal) AS InvoiceSum
FROM Vendors JOIN Invoices
	ON Vendors.VendorID = Invoices.VendorID
GROUP BY VendorName
ORDER BY InvoiceCount DESC;