with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost AS log_cost,
        CAST(ship_cost AS INT64)

    from source

)

select * from renamed
