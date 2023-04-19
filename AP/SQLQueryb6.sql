-- BDAT 605: Database Principles 

/*
Write a SELECT statement that answers the following question: 
	What is the total amount invoiced for each AccountNo? 
Use the WITH ROLLUP operator to include a row that gives the grand total. 

Hint: Use the InvoiceLineItemAmount column of the InvoiceLineItems table.
*/

USE AP;
GO

SELECT AccountNo, SUM(InvoiceLineItemAmount) AS TotalAmount
FROM InvoiceLineItems
GROUP BY AccountNo WITH ROLLUP