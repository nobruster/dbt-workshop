{{ config(materialized='view') }}

WITH src_subscriptions AS (
    select *
    from workshop.dbt_bnunes_workshop.subscriptions  limit 10
)
SELECT 
    sb.user_id,
    sb.plan,
    sb.status ,
    sb.payment_term ,
    sb.payment_method 
FROM src_subscriptions sb