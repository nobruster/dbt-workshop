{{ config(materialized='view') }}

WITH src_user AS (
    select *
    from workshop.dbt_bnunes_workshop.user 
)
SELECT 
    pu.id,
    pu.user_id,
    pu.username,
    pu.gender,
    pu.employment,
    pu.credit_card,
    pu.subscription
FROM src_user pu