select product_id, year as first_year, quanitity, price from sales where
(product_id, year) in (select product_id, min year) as year from sales
GROUP BY product_id;