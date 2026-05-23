select
    id as customer_id,
    first_name,
    last_name
from {{ source('jaffle_shop', 'customers') }} --name of the source + name of the table