{{ config(materialized='table') }}

select distinct C_CUSTKEY as CUST_ID from {{ref('customer')}} 