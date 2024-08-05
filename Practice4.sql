/*
This query retrieves invoices from the Invoice table where the billing city is either Brussels, Paris, or 
Orlando. The results are sorted by the invoice date.
*/
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	BillingCity IN('Brussels', 'Paris','Orlando')
ORDER By
	InvoiceDate