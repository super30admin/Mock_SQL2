SELECT customer_id from customer group by customer_id
having COUNT(Distinct product_key) = (Select COUNT(distinct product_key) from product)