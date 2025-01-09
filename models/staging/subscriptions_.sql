{{ config(materialized='view') }}
WITH src_subscriptions AS (
    SELECT * FROM {{ source('workshop', 'subscriptions') }}  
)
SELECT 
    sb.user_id,
    sb.plan,
    sb.status ,
    sb.payment_term ,
    sb.payment_method,
    sb.subscription_term 
FROM src_subscriptions sb