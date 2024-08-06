/*
This SQL query selects the InvoiceDate, BillingAddress, BillingCity, and total columns from the 
Invoice table. It filters the results to include only those invoices dated after May 22, 2010, with a 
total amount less than 3.00, and orders them by InvoiceDate
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