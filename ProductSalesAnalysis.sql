SELECT product_id, year as first_year, quantity, price
FROM SALES
where (product_id, year) in (SELECT product_id, MIN(year) from SALES group by product_id)