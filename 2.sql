# Write your MySQL query statement below
with cte as (
    select distinct product_id as p, min(year) as first_year
    from sales
    group by product_id
)
select product_id, first_year, quantity,price from sales
join cte
on product_id= p and year = first_year