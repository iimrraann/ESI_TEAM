SELECT  
*
,(RETAIL_PRICE*ORDER_QUANTITY*(1-DISCOUNT))+SHIPPING_COST AS ORDER_TOTAL
from {{ref("stg_encounters")}}