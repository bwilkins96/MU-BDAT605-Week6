-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns three columns:
VendorName              From the Vendors table
DefaultAccountNo        From the Vendors table
AccountDescription      From the GLAccounts table

The result set should have one row for each vendor, 
with the account number and account description for that vendor's default account number.
Sort the result set by AccountDescription, then by VendorName.
*/

USE AP;
GO

SELECT VendorName, DefaultAccountNo, AccountDescription
FROM Vendors JOIN GLAccounts
	ON Vendors.DefaultAccountNo = GLAccounts.AccountNo
ORDER BY AccountDescription, VendorName;