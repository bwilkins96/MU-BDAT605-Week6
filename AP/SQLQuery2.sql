-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns four columns:
VendorName              From the Vendors table
InvoiceNumber           From the Invoices table
InvoiceDate             From the Invoices table
Balance                 InvoiceTotal minus the sum of PaymentTotal and CreditTotal

The result set should have one row for each invoice with a non-zero balance. Sort the result set by VendorName in ascending order.
*/

USE AP;
GO

SELECT VendorName, InvoiceNumber, InvoiceDate, 
	InvoiceTotal - PaymentTotal - CreditTotal AS Balance
FROM Invoices JOIN Vendors
	ON Invoices.VendorID = Vendors.VendorID
WHERE InvoiceTotal - PaymentTotal - CreditTotal <> 0
ORDER BY VendorName;