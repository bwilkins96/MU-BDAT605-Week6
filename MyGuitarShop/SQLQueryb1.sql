-- BDAT 605: Database Principles 

/* 
Write a SELECT statement that returns these columns:
The count of the number of orders in the Orders table
The sum of the TaxAmount columns in the Orders table
*/

USE MyGuitarShop;
GO

SELECT COUNT(*) AS NumOrders, SUM(TaxAmount) AS SumTaxes
FROM Orders;