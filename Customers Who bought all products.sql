SELECT c.customer_id
FROM Customer c
LEFT JOIN product p ON c.product_key = p.product_key
GROUP BY c.customer_id
having COUNT(DISTINCT c.product_key) = (SELECT COUNT(p1.product_key) FROM product p1)  
