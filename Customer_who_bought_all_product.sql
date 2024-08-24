with CTE as (
    SELECT customer_id, count(DISTINCT product_key) as product_count
    From customer
    group by customer_id
)
SELECT Customer_id from CTE 
WHERE product_count = (SELECT count(product_key) from Product);