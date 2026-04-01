
  
  create view "dev"."main"."customer_lifetime_value__dbt_tmp" as (
    SELECT
    customer_id,
    SUM(amount) AS lifetime_value,
    COUNT(order_id) AS total_orders
FROM "dev"."main"."fact_orders"
GROUP BY customer_id
  );
