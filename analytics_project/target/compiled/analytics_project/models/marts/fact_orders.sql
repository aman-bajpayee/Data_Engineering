

SELECT
    order_id,
    customer_id,
    product_id,
    CAST(order_date AS DATE) AS order_date,
    amount
FROM "dev"."main"."stg_orders"



WHERE order_date >= (
    SELECT COALESCE(MAX(order_date), DATE '1900-01-01') - INTERVAL '2 days'
    FROM "dev"."main"."fact_orders"
)

