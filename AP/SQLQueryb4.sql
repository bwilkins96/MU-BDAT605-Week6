-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns three columns: AccountDescription, LineItemCount, and LineItemSum. 
LineItemCount is the number of entries in the InvoiceLineItems table that have that AccountNo. 
LineItemSum is the sum of the InvoiceLineItemAmount column for that AccountNo. 

Filter the result set to include only those rows with LineItemCount greater than 1. 
Group the result set by account description, and sort it by descending LineItemCount. 

Hint: Join the GLAccounts table to the InvoiceLineItems table.
*/

USE AP;
GO

SELECT AccountDescription, COUNT(*) AS LineItemCount,
	SUM(InvoiceLineItemAmount) AS LineItemSum
FROM GLAccounts JOIN InvoiceLineItems 
	ON GLAccounts.AccountNo = InvoiceLineItems.AccountNo
GROUP BY AccountDescription
HAVING Count(*) > 1
ORDER BY LineItemCount DESC;