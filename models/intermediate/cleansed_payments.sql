{{ config(materialized='table') }}

with cleansed_payments as (
    
    select * from {{ ref('payments_') }}

)
select 
    ps.user_id as user_id,
    ps.city ,
    ps.race ,
    ps.country ,
    ps.currency,
    ps.credit_card_type,
    TO_DECIMAL(replace(ps.subscription_price,'$'),10,2) subscription_price
from cleansed_payments ps