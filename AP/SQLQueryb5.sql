-- BDAT 605: Database Principles 

/*
Modify the solution to exercise 4 to filter for invoices dated from December 1, 2011 to February 29, 2012. 
Hint: Join to the Invoices table to code a search condition based on InvoiceDate.
*/

USE AP;
GO

SELECT AccountDescription, COUNT(*) AS LineItemCount,
	SUM(InvoiceLineItemAmount) AS LineItemSum
FROM GLAccounts JOIN InvoiceLineItems 
	ON GLAccounts.AccountNo = InvoiceLineItems.AccountNo
JOIN Invoices
	ON InvoiceLineItems.InvoiceID = Invoices.InvoiceID
WHERE InvoiceDate BETWEEN '12/01/2011' AND '02/29/2012'
GROUP BY AccountDescription
HAVING Count(*) > 1
ORDER BY LineItemCount DESC;