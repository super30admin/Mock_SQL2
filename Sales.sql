#Approach 1:
# Write your MySQL query statement below
Select s.product_id, s.year as first_year, s.quantity, s.price from Sales s join (Select product_id, min(Year) as year from Sales group by product_id) as subquery on subquery.product_id= s.product_id and subquery.year= s.year;

#Approach 2:
Select product_id, year as first_year, quantity, price from Sales where (product_id,year) in (Select product_id , min(Year) as year from Sales group by product_id);