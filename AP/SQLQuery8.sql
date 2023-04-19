-- BDAT 605: Database Principles 

/*
Use the UNION operator to generate a result set consisting of two columns from the Vendors table: VendorName and VendorState. 
If the vendor is in California, the VendorState value should be "CA"; otherwise, the VendorState value should be "Outside CA." 
Sort the final result set by VendorName.
*/

USE AP;
GO

	SELECT VendorName, VendorState
	FROM Vendors
	WHERE VendorState = 'CA'
UNION
	SELECT VendorName, 'Outside CA' AS VendorState
	FROM Vendors
	WHERE VendorState <> 'CA'
ORDER BY VendorName;