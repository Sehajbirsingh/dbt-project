{{ config(materialized='table') }}

select distinct C_NATIONKEY from {{ref('customer')}}