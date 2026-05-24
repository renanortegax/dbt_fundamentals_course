select *
from raw.dev_renanortegax.dim_customers;

select *
from raw.dev_renanortegax.customers
where first_name like 'M%';

select
*
from raw.stripe.payments
limit 10
;

select *
from raw.dev_renanortegax.fct_orders
limit 10;

select *
from raw.jaffle_shop.orders
limit 10;

SELECT
table_schema,
table_name,
last_altered,
(table_type = 'VIEW' OR table_type = 'MATERIALIZED_VIEW') AS is_view
FROM `raw`.INFORMATION_SCHEMA.TABLES
WHERE table_schema = 'jaffle_shop' and table_name = 'orders';


select *
from raw.stripe.payments
limit 10;

select distinct status
from raw.jaffle_shop.orders
limit 10;

select
order_id,
count(*)
from raw.dev_renanortegax.stg_jaffle_shop__orders
group by 1
HAVING count(*) > 1
;

SELECT
*
from raw.dev_renanortegax.stg_stripe__payments
limit 10;

SELECT
distinct payment_method
from raw.dev_renanortegax.stg_stripe__payments
;