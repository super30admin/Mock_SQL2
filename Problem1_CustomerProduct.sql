# Write your MySQL query statement below

select customer_id
#,count(distinct product_key) as productcount
from customer
group by customer_id
having count(distinct product_key) in (select count(product_key)
from product);