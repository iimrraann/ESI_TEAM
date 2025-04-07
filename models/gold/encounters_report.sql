select city, sum(order_total) as total 
from {{ ref("encounters") }} group by 1
