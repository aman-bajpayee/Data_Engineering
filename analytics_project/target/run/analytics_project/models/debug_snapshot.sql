
  
  create view "dev"."main"."debug_snapshot__dbt_tmp" as (
    SELECT *
FROM customer_snapshot
  );
