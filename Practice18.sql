/*
This query retrieves the first name, last name, and address of customers from the "Customer" table who are
 located in the USA and concatenates these details into a single string.
*/
SELECT
	FirstName,
	LastName,
	Address,
	FirstName ||" "|| LastName || " " || Address || "," || City
FROM
	Customer
WHERE
	Country ='USA'