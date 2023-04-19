-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns four columns: 
VendorName, AccountDescription, LineItemCount, and LineItemSum. 
LineItemCount is the row count, and LineItemSum is the sum of the InvoiceLineItemAmount column. 

For each vendor and account, return the number and sum of line items, sorted first by vendor, then by account description. 
Hint: Use a four-table join.
*/

USE AP;
GO

SELECT VendorName, AccountDescription, COUNT(*) AS LineItemCount, 
	SUM(InvoiceLineItemAmount) AS LineItemSum
FROM Vendors JOIN Invoices
	ON Vendors.VendorID = Invoices.VendorID
JOIN InvoiceLineItems ON
	Invoices.InvoiceID = InvoiceLineItems.InvoiceID
JOIN GLAccounts ON
	InvoiceLineItems.AccountNo = GLAccounts.AccountNo
GROUP BY VendorName, AccountDescription
ORDER BY VendorName, AccountDescription;