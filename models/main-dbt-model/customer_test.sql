{{ config(
    database='SNOWFLAKE_SAMPLE_DATA',
    schema='TPCH_SF1',
    materialized='table') }}

with source as (
    select *
    from {{ source('sf_db', 'CUSTOMER') }}
)

select * from source