/*
This SQL query selects invoice details from the Invoice table where the total is greater than 1.98 and the
billing city starts with 'P' or 'D', ordering the results by InvoiceDate
*/
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total > 1.98 AND (BillingCity LIKE 'P%' OR BillingCity LIKE 'D%') 
ORDER BY
	InvoiceDate