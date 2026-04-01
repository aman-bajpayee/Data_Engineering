
  
  create view "dev"."main"."stg_orders__dbt_tmp" as (
    SELECT
    order_id,
    customer_id,
    customer_city,
    product_id,
    product_name,
    category,
    CAST(order_date AS DATE) AS order_date,
    amount
FROM "dev"."main"."orders_new"
  );
