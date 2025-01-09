{{ config(materialized='view') }}

WITH src_payments AS (
    select *
    from workshop.dbt_bnunes_workshop.payments  limit 10
)
SELECT 
    ps.user_id,
    ps.city,
    ps.race,
    ps.country,
    ps.currency,
    ps.credit_card_type,
    ps.subscription_price
FROM src_payments ps