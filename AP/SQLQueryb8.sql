-- BDAT 605: Database Principles 

/*
Write a SELECT statement that answers this question: 
	Which vendors are being paid from more than one account? 

Return two columns: the vendor name and the total number of accounts that apply to that vendor's invoices. 
Hint: Use the DISTINCT keyword to count InvoiceLineItems.AccountNo.
*/

SELECT VendorName, COUNT(Distinct InvoiceLineItems.AccountNo) AS NumAccounts
FROM Vendors JOIN Invoices
	ON Vendors.VendorID = Invoices.VendorID
JOIN InvoiceLineItems
	ON Invoices.InvoiceID = InvoiceLineItems.InvoiceID
GROUP BY VendorName
HAVING COUNT(Distinct InvoiceLineItems.AccountNo) > 1
ORDER BY NumAccounts DESC;