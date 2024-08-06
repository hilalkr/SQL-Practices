/*
This SQL query retrieves the InvoiceDate, BillingAddress, BillingCity, and total columns from the 
Invoice table for invoices that have a date after May 22, 2010, and a total amount less than 3.00. 
The results are ordered by InvoiceDate
*/
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	DATE(InvoiceDate) > '2010-05-22' AND total < 3.00
ORDER BY
	InvoiceDate