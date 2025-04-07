select city, sum(order_total) from {{ ref("encounters") }} group by 1
