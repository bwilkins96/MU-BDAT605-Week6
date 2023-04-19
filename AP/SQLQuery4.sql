-- BDAT 605: Database Principles 

/*
Generate the same result set described in exercise 2, but use the implicit join syntax.
*/

SELECT VendorName, InvoiceNumber, InvoiceDate, 
	InvoiceTotal - PaymentTotal - CreditTotal AS Balance
FROM Invoices, Vendors
WHERE InvoiceTotal - PaymentTotal - CreditTotal <> 0 AND Invoices.VendorID = Vendors.VendorID
ORDER BY VendorName;