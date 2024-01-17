select
  o.region,
  prefecture,
  o.city,
  ship_mode,
  order_date,
  product_category,
  product_subcategory,
  product_name,
  ifnull(r.returned, false) as is_returned,
  date_diff(ship_date, order_date, day) as delivery_days,
  sales,
  quantity,
  discount_rate,
  profit
from
  `sample-superstore-411114.sample_superstore.orders` as o
  left join `sample-superstore-411114.sample_superstore.return` as r
    on o.order_id = r.order_id
order by
  delivery_days desc,
  region,
  prefecture,
  city,
  ship_mode,
  product_category,
  product_subcategory,
  product_name,
  quantity
;
