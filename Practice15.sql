/*
This SQL query retrieves all columns from the Invoice table joined with the Customer table, where the 
CustomerId in both tables matches
*/
SELECT
*
FROM
    Invoice
INNER JOIN 
    Customer
ON 
    Invoice.CustomerId = Customer.CustomerId
