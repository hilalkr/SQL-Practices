/*Main Concept: Truncate; to shorten or reduce 
SUBSTR() Function; used truncate strings of text
*/

SELECT
	FirstName,
	LastName,
	Address,
	FirstName ||" "|| LastName || " " || Address || "," || City,
    LENGTH(postalcode),
    substr(postalcode,1,5) AS [5 Digit Postal Code]
FROM
	Customer
WHERE
	Country ='USA'