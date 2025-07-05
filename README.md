# Mock_SQL2
 Problem1: Customers Who Bought All Products(https://leetcode.com/problems/customers-who-bought-all-products/description/)
 Solution:

Select c.customer_id 
from Customer c
inner join Product p
on c.product_key = p.product_key 
group by c.customer_id 
having count(distinct c.product_key) = (select count(*) from Product)

Problem2: Product Sales Analysis |||(https://leetcode.com/problems/product-sales-analysis-iii/description/)
Solution:

SELECT product_id, year AS first_year, quantity, price 
FROM  Sales 
WHERE (product_id, year) IN (
    SELECT product_id, MIN(year) AS year 
    FROM Sales 
    GROUP BY product_id
  );