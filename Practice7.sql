/*
This SQL query retrieves the invoice date, billing address, city, and total amount from the Invoice table 
for invoices issued on May 22, 2010. The results are ordered by the invoice date.
*/
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	InvoiceDate= '2010-05-22 00:00:00'
ORDER BY
	InvoiceDate