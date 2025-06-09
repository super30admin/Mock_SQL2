WITH CTE AS (SELECT *, DENSE_RANK()
OVER(PARTITION BY product_id ORDER BY year) as 'first_year' from sales )
Select product_id, year as 'first_year', quantity, price from CTE where first_year = 1