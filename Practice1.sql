/*
This query retrieves the first name, last name, and email of customers from the Customer table. 
Results are sorted by first name (ascending) and last name (descending), displaying only the first ten 
records.
*/

SELECT
	FirstName AS [Customer First Name],
	LastName AS 'Customer Last Name',
	Email AS EMAIL 
FROM
	Customer
ORDER BY
	FirstName ASC,
	LastName DESC
LIMIT 10