
{{ config(materialized='table') }}


Select 
    *
FROM 
    {{ source('dbt-tutorial', 'fact_sales')}}

    