SELECT
    c.customer_city,
    p.category,
    COUNT(f.order_id) AS total_orders,
    SUM(f.amount) AS total_revenue,
    AVG(f.amount) AS avg_order_value
FROM {{ ref('fact_orders') }} f
JOIN {{ ref('dim_customer') }} c
    ON f.customer_id = c.customer_id
    AND c.dbt_valid_to IS NULL   -- current version only
JOIN {{ ref('dim_product') }} p
    ON f.product_id = p.product_id
GROUP BY 1, 2