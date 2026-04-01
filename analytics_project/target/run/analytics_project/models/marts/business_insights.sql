
  
  create view "dev"."main"."business_insights__dbt_tmp" as (
    SELECT
    c.customer_city,
    p.category,
    COUNT(f.order_id) AS total_orders,
    SUM(f.amount) AS total_revenue,
    AVG(f.amount) AS avg_order_value
FROM "dev"."main"."fact_orders" f
JOIN "dev"."main"."dim_customer" c
    ON f.customer_id = c.customer_id
    AND c.dbt_valid_to IS NULL   -- current version only
JOIN "dev"."main"."dim_product" p
    ON f.product_id = p.product_id
GROUP BY 1, 2
  );
