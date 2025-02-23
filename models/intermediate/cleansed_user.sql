{{ config(materialized='table') }}

with cleansed_user as (
    
    select * from {{ ref('users') }}

)
select 
    cu.user_id as user_id,
    cu.username as user_name,
    cu.gender as gender,
    json_extract_path_text(cu.employment::string, 'title')title,
    json_extract_path_text(cu.subscription::string, 'payment_method')as payment_method
from cleansed_user cu