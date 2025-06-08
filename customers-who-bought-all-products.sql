# Write your MySQL query statement below
select customer_id
From (select customer_id , count(distinct(product_key)) as cnt 
from customer group by customer_id) as s where cnt = (select count(*) from Product);
