with freight_sum as (
    select sum(freight) as freight
    from {{ source('northwind', 'orders') }}
    where date_trunc(order_Date, month) = '1996-07-01'
)

select * from freight_sum
where freight != 1288.18