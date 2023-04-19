-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns three columns:
VendorID                From the Vendors table
VendorName              From the Vendors table
Name                    A concatenation of VendorContactFName and VendorContactLName, with a space in between

The result set should have one row for each vendor whose contact has the same first name as another vendor's contact. 
Sort the final result set by Name. Hint: Use a self-join.
*/

USE AP;
GO

SELECT DISTINCT v1.VendorID, v1.VendorName, v1.VendorContactFName + ' ' + v1.VendorContactLName AS Name
FROM Vendors v1 Join Vendors v2
	ON v1.VendorID <> v2.VendorID
WHERE v1.VendorContactFName = v2.VendorContactFName
ORDER BY Name;