/*
This query retrieves invoices from the Invoice table where the total amount is either $1.98 or $3.96. 
The results are sorted by the invoice date.
*/
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
	
WHERE
	total IN(1.98,3.96)
ORDER BY
	InvoiceDate