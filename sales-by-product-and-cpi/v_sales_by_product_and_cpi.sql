with cpi_monthly as (
  select
    date(
      concat(
        substr(cast(month as string), 1, 4), 
        '-',
        substr(cast(month as string), 5, 2),
        '-01'
      )
    ) as month,
    cpi
  from `sample-superstore-411114.external_data.cpi_tokyo_monthly`
  order by month 
)

select
  date_trunc(order_date, month) as order_month,
  city,
  prefecture,
  region,
  product_category,
  product_subcategory,
  product_name,
  sales,
  quantity,
  profit,
  discount_rate,
  c.cpi
from
  `sample-superstore-411114.sample_superstore.orders` as o
  inner join cpi_monthly as c
  on date_trunc(o.order_date, month) = c.month
order by
  order_month
;
