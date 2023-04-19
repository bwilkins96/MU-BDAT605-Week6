-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns six columns:
VendorID            From the Invoices table
InvoiceDate         From the Invoices table
InvoiceTotal        From the Invoices table
VendorTotal         The sum of the invoice totals for each vendor
VendorCount         The count of invoices for each vendor
VendorAvg           The average of the invoice totals for each vendor

The result set should include the individual invoices for each vendor.
*/

USE AP;
GO

SELECT VendorID, InvoiceDate, InvoiceTotal,
	SUM(InvoiceTotal) OVER(PARTITION BY VendorID) AS VendorTotal, 
	COUNT(*) OVER(PARTITION BY VendorID) AS VendorCount, 
	AVG(InvoiceTotal) OVER(PARTITION BY VendorID) AS VendorAvg
FROM Invoices;