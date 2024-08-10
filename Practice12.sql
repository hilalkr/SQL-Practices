/*
This SQL query selects invoice details from the Invoice table, including InvoiceDate, BillingAddress, 
BillingCity, and total, and categorizes each invoice into a PurchaseType based on the total amount using 
a CASE statement, ordering the results by BillingCity
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

ORDER BY
	BillingCity