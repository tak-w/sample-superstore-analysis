select
  order_date,
  product_name,
  case
    when starts_with(product_name, 'Office Star') then 'Office Star'
    when starts_with(product_name, 'Harbour Creations') then 'Harbour Creations'
    when starts_with(product_name, 'Green Bar') then 'Green Bar'
    when starts_with(product_name, 'Binney & Smith') then 'Binney & Smith'
    else split(product_name, ' ')[0]
  end as maker_name,
  case
    when starts_with(product_name, 'Office Star') then regexp_extract(product_name, r"^Office Star (.+)")
    when starts_with(product_name, 'Harbour Creations') then regexp_extract(product_name, r"Harbour Creations (.+)")
    when starts_with(product_name, 'Green Bar') then regexp_extract(product_name, r"Green Bar (.+)")
    when starts_with(product_name, 'Binney & Smith') then regexp_extract(product_name, r"Binney & Smith (.+)")
    else sample_superstore.extract_original_product_name(product_name)
  end as original_product_name,
  customer_classification,
  region,
  prefecture,
  city,
  sales,
  quantity,
  discount_rate
from
  `sample-superstore-411114.sample_superstore.orders` as o
