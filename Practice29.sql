/*CHALLANGE 9 -> This query identifies tracks that have never been sold */

SELECT
	t.TrackId AS "Track ID",
	t.Name AS "Track Name",
	t.Composer,
	g.Name AS GENRE
FROM
	Track T
	JOIN Genre g ON t.GenreId = g.GenreId
WHERE
	t.TrackId NOT IN(
	SELECT DISTINCT InvoiceLine.TrackId
	FROM InvoiceLine)
ORDER BY
	"Track Name" ASC;