select
date_date
,orders_id
,products_id
, revenue
, quantity
, purchase_price
, (revenue-quantity*purchase_price) as margin
, (quantity*purchase_price) as purchase_cost
from {{ ref("stg_raw__sales")}} left join {{ ref("stg_raw_product")}} using (products_id)