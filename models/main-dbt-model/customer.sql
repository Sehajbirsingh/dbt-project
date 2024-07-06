{{ config(materialized='table') }}

with source as (
    select *
    from {{ source('sf_db', 'CUSTOMER') }}
)

select * from source