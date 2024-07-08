{{ config(
    database='my_database',
    schema='my_schema',
    materialized='table') }}

select distinct C_NATIONKEY from {{ ref('customer') }}
