/*
This query retrieves invoices from the Invoice table where the total amount is between $1.98 and $5.00. 
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
	total BETWEEN 1.98 AND 5.00
ORDER BY
	InvoiceDate