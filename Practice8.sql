/*
This SQL query selects specific columns (InvoiceDate, BillingAddress, BillingCity, total) from the 
Invoice table for invoices dated May 22, 2010, and orders the results by InvoiceDate.
*/
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	DATE(InvoiceDate)= '2010-05-22'
ORDER BY
	InvoiceDate