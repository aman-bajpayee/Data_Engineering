{% snapshot customer_snapshot %}

{{
    config(
      target_schema='main',
      unique_key='customer_id',
      strategy='check',
      check_cols=['customer_city']
    )
}}

SELECT DISTINCT
    customer_id,
    customer_city
FROM {{ ref('stg_orders') }}

{% endsnapshot %}