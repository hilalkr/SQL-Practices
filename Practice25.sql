/*Subqueries in the SELECT
How is each individual city performing against the globalaverage sales?
 */

SELECT
	BillingCity,
	AVG(total) AS [City Average],
	(select avg(total) from Invoice) AS [Global Average]
FROM
	Invoice
GROUP BY
	BillingCity
ORDER BY
	BillingCity