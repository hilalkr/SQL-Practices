/*
This SQL query selects invoices from the Invoice table, categorizes them into PurchaseType, and attempts 
to filter for 'Top Performer' invoices, but incorrectly uses the alias in the WHERE clause, which should 
instead filter using total > 15.00
*/
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total,
	CASE
	WHEN total < 2.00 THEN 'Baseline Purchase'
	WHEN total BETWEEN 2.00 AND 6.99 THEN 'Low Purchase'
	WHEN total BETWEEN 7.00 AND 15.00 THEN 'Tareget Purchase'
	ELSE 'Top Performer'
	END AS PurchaseType
FROM
	Invoice
WHERE
	PurchaseType  = 'Top Performer'

ORDER BY
	BillingCity