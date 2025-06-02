with product_sale_year as (
    select
        product_id,
        year as first_year,
        quantity,
        price,
        dense_rank() over (
            partition by product_id
            order by year
        ) as rnk
    from
        sales
)

select
    product_id,
    first_year,
    quantity,
    price
from product_sale_year
where rnk = 1