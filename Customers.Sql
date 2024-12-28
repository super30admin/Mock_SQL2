#Approach 1:

Select customer_id from Customer group by customer_id having count(Distinct product_key)=(Select count(product_key) from Product);

#Approach 2:
Select c.customer_id from Customer c left join Product p on c.product_key=p.product_key group by c.customer_id having count(Distinct c.product_key)=(Select count(product_key) from Product);



