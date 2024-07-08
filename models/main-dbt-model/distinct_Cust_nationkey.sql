{{ config(
    database='SNOWFLAKE_SAMPLE_DATA',
    schema='TPCH_SF1',
    materialized='table') }}

select distinct C_NATIONKEY from {{ref('customer')}}