-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns two columns: 
	VendorName and PaymentSum, where PaymentSum is the sum of the PaymentTotal column.

Group the result set by VendorName. 
Return only 10 rows corresponding to the 10 vendors who've been paid the most. 
Hint: Use the TOP clause and join Vendors to Invoices.
*/

USE AP;
GO

SELECT TOP 10 VendorName, SUM(PaymentTotal) AS PaymentSum
FROM Vendors JOIN Invoices 
	ON Vendors.VendorID = Invoices.InvoiceID
GROUP BY VendorName
ORDER BY PaymentSum DESC;