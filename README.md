# Mock_SQL2

1: Write a solution to report the customer ids from the Customer table that bought all the products in the Product table.

Return the result table in any order.


---------------------------------------------------------------------------------------------------------


SELECT DISTINCT CustomerId
FROM Sales s1
WHERE NOT EXISTS (
    SELECT ProductId
    FROM Sales s2
    WHERE NOT EXISTS (
        SELECT *
        FROM Sales s3
        WHERE s3.CustomerId = s1.CustomerId AND s3.ProductId = s2.ProductId
    )
)




---------------------------------------------------------------------------------------------------------


2: 

Write a solution to find all sales that occurred in the first year each product was sold.

For each product_id, identify the earliest year it appears in the Sales table.

Return all sales entries for that product in that year.

Return a table with the following columns: product_id, first_year, quantity, and price.
Return the result in any order.

 


---------------------------------------------------------------------------------------------------------
SELECT Product_ID, 
       SUM(Quantity) AS Total_Sales
FROM Sales
GROUP BY Product_ID
ORDER BY Product_ID;





---------------------------------------------------------------------------------------------------------




