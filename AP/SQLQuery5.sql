-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns five columns from three tables, all using column aliases:
Vendor                      VendorName column
Date                        InvoiceDate column
Number                      InvoiceNumber column
#                           InvoiceSequence column
LineItem                    InvoiceLineItemAmount column

Assign the following correlation names to the tables:
v                           Vendors table
i                           Invoices table
li                          InvoiceLineItems table

Sort the final result set by Vendor, Date, Number, and #.
*/

USE AP;
GO

SELECT VendorName AS Vendor, InvoiceDate AS Date, InvoiceNumber AS Number, 
	InvoiceSequence AS #, InvoiceLineItemAmount AS LineItem
FROM Vendors v JOIN Invoices i
	ON v.VendorID = i.VendorID
JOIN InvoiceLineItems li 
	ON i.InvoiceID = li.InvoiceID
ORDER BY Vendor, Date, Number, #;