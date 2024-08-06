/*
This SQL query retrieves the invoice date, billing address, city, and total amount from the Invoice table 
for invoices where the billing city contains the letter 'B' anywhere in its name. The results are ordered 
by the invoice date.
*/
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	BillingCity LIKE '%B%'
ORDER By
	InvoiceDate