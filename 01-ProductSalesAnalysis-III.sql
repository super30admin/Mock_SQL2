-- Mock Interview Question 1: Product Sales Analysis III (https://leetcode.com/problems/product-sales-analysis-iii)

with cte as (select product_id, year, quantity, price, 
dense_rank() over(partition by product_id order by year) as rnk
from sales)
select product_id, year as first_year, quantity, price 
from cte
where rnk=1