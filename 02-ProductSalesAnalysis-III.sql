-- Mock Interview Question 2 - Product Sales Analysis III (https://leetcode.com/problems/product-sales-analysis-iii/)

-- Writing an inner subquery for filtering minimum year and getting matching quantity and price for that year

SELECT product_id, year AS first_year, quantity, price
FROM Sales
WHERE (product_id, year) IN (SELECT product_id, MIN(year) 
FROM Sales
GROUP BY product_id);