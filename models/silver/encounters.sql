select
    *,
    ((right(retail_price, len(retail_price) - 1) * order_quantity)*
    (100 - left(discount, len(discount)-1)))/100 
    +right(shipping_cost, len(shipping_cost) - 1) as order_total
from {{ ref("stg_encounters") }}
