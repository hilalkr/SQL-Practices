/*
This SQL query selects the last name, first name, invoice ID, customer ID, invoice date, and total from 
the Invoice table joined with the Customer table, where their CustomerId values match, and orders the 
results by the customer ID
*/
SELECT
c.LastName,
c.FirstName,
i.InvoiceId,
i.CustomerId,
i.InvoiceDate,
i.total
FROM
    Invoice AS i
INNER JOIN 
    Customer AS c
ON 
    i.CustomerId = c.CustomerId
order by
    c.CustomerId