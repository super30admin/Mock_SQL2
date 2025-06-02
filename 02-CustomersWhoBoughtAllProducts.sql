-- Mock Interview Question 2: Customers Who Bought All Products https://leetcode.com/problems/customers-who-bought-all-products

-- solution 1

with 
p_cte as(
    select count(product_key) as tot_pdt
    from product
),
c_cte as (
    select customer_id, count(distinct product_key) as c_pdt
    from customer group by customer_id
)
select customer_id
from p_cte, c_cte
where tot_pdt=c_pdt

-- solution 2

select customer_id
from customer 
group by customer_id
having count(distinct product_key) = (select count(product_key) from product) 