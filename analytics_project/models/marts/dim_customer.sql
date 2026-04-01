SELECT
    customer_id,
    customer_city,
    dbt_valid_from,
    dbt_valid_to
FROM {{ ref('customer_snapshot') }}