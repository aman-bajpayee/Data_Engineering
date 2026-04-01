
  
  create view "dev"."main"."dim_product__dbt_tmp" as (
    SELECT DISTINCT
    product_id,
    product_name,
    category
FROM "dev"."main"."stg_orders"
  );
