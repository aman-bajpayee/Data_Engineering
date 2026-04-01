SELECT
    order_date,
    SUM(amount) AS total_sales
FROM "dev"."main"."fact_orders"
GROUP BY order_date