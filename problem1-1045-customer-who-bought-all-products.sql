with customer_product_purchase as (
    select
        customer_id,
        count(distinct product_key) as cnt
    from
        customer
    group by customer_id
)

select customer_id
from
    customer_product_purchase
where cnt = (select count(product_key) from product)
