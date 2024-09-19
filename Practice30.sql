/*Views and Joins */

CREATE VIEW V_Tracks_InvoiceLine AS /* Creating a view that combines invoice line details with track information */
SELECT
	il.İnvoiceId,
	il.UnitPrice,
	il.Quantity,
	t.Name,
	t.Composer,
	t.Milliseconds
FROM
	InvoiceLine il
INNER JOIN
	trcak t /* Joining InvoiceLine with Track based on TrackId */

ON
	il.TrackId = t.TrackId