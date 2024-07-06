{{ config(materialized='table') }}

with source as (
    select *
    from {{ source('sf_db', 'customer') }}
)

select * from source