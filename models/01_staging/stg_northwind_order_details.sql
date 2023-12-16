{{
    config(
        materialized = 'view'
    )
}}

with raw_table as (
    select
        order_ID as order_id
        , product_ID as product_id
        , cast(unit_Price as numeric) as unit_price
        , quantity
        , cast(discount as numeric) as discount
    from {{ source('northwind', 'order_details') }}
)

select *
from raw_table