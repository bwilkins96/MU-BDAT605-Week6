-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns two columns from the Invoices tale: VendorID and PaymentSum, 
where PaymentSum is the sum of the PaymentTotal column. 
Group the result set by VendorID.
*/

USE AP;
GO

SELECT VendorID, SUM(PaymentTotal) AS PaymentSum
FROM Invoices
GROUP BY VendorID;