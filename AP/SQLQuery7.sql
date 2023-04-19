-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns two columns from the GLAccounts table: AccountNo and AccountDescription. 
The result set should have one row for each account number that has never been used. 
Sort the final result set by AccountNo. 
Hint: Use an outer join to the InvoiceLineItems table.
*/

USE AP;
GO

SELECT GLAccounts.AccountNo, AccountDescription
FROM InvoiceLineItems LEFT JOIN GLAccounts
	ON InvoiceLineItems.AccountNo = GLAccounts.AccountNo
WHERE InvoiceLineItems.AccountNo IS NULL
ORDER BY GLAccounts.AccountNo;