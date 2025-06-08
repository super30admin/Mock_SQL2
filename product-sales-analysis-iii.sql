# Write your MySQL query statement below
With CTE as (
    select product_id, min(year) as 'first_year' from Sales group by product_id 
) 
select s.product_id, s.year as 'first_year', s.quantity, s.price from Sales s 
join cte on cte.first_year=s.year and cte.product_id=s.product_id;


