-- dbt-style model — will break if legacy_payment_method is dropped upstream without migration
select
  order_id,
  customer_id,
  order_status,
  amount,
  legacy_payment_method
from {{ ref('customer_orders') }}
