/*
This query retrieves the top 10 invoices with the highest total amounts, including customer and support 
representative details, sorted by invoice total in descending order.
*/
SELECT
	e.FirstName AS EmployeeFirstName,
	e.LastName AS EmployeeLastName,
	e.EmployeeId,
	c.FirstName AS CustomerFirstName,
	c.LastName AS CustomerLastName,
	c.SupportRepId,
	i.CustomerId,
	i.total
FROM
	Invoice AS i
INNER JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
INNER JOIN
	Employee AS e
ON
	c.SupportRepId = e.EmployeeId
ORDER BY
	i.total DESC
LIMIT 10;

