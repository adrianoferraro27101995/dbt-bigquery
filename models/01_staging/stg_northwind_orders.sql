with raw_table as (
    select
        order_id
        , customer_id
        , employee_id
        , order_date
        , required_date
        , shipped_date
        , ship_via
        , cast(freight as numeric) as freight
        , ship_name
        , ship_address
        , ship_city
        , ship_region
        , ship_postal_code
        , ship_country
    from {{ source('northwind', 'orders') }}
)

select *
from raw_table