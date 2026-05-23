select
    id as payment_id
    ,orderid as order_id
    ,paymentmethod as payment_method
    ,status
    -- cents to dolla
    ,amount / 100 as amount
    ,created
from {{ source('stripe','payments') }}