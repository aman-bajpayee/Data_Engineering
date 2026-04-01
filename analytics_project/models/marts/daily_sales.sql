SELECT
    order_date,
    SUM(amount) AS total_sales
FROM {{ ref('fact_orders') }}
GROUP BY order_date