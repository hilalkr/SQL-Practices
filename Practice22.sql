/*aggregate() function: Turns a range of numbers into a single point of data
What are our all time global sales?
*/

SELECT
	SUM(Total) AS [Total Sales],
	AVG(Total) AS [Average Sales],
	MAX(Total) AS [Maximum Sale],
	MIN(Total) AS [Minimum Sale],
	COUNT(*) AS [Sales Count]
FROM
    Invoice