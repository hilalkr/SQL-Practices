/*Date Functions
Calculate the ages of all employees
Used "strftime" function
*/

SELECT
	FirstName,
	LastName,
    BirthDate,
    strftime('%Y-%m-%d',BirthDate) AS [BirthDate No Timecode],
    strftime('%Y-%m-%d','now') - strftime('%Y-%m-%d',BirthDate) AS Age
FROM
    Employee