/*
This SQL query selects track details from the Track table, categorizes each track into a PriceCategory 
based on its UnitPrice, and orders the results by price.
*/
SELECT 
    t.Name AS "Track Name",
    t.Composer,
    t.UnitPrice AS price,
    CASE
        WHEN t.UnitPrice <= 0.99 THEN 'Budget'
        WHEN t.UnitPrice BETWEEN 1.00 AND 1.49 THEN 'Regular'
        WHEN t.UnitPrice BETWEEN 1.50 AND 1.99 THEN 'Premium'
        ELSE 'Exclusive'
    END AS PriceCategory
FROM 
    Track AS t
ORDER BY 
    price;