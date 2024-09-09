/*Upper and Lower String Functions*/

SELECT
	FirstName,
	LastName,
	Address,
	FirstName ||" "|| LastName || " " || Address || "," || City,
    LENGTH(postalcode),
    substr(postalcode,1,5) AS [5 Digit Postal Code],
    upper(firstname) AS [First Name All caps],
    lower(lastname) AS [Last Name All Lower]
FROM
	Customer
WHERE
	Country ='USA'