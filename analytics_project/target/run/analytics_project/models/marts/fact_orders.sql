
        
            delete from "dev"."main"."fact_orders"
            where (
                order_id) in (
                select (order_id)
                from "fact_orders__dbt_tmp20260327124003320658"
            );

        
    

    insert into "dev"."main"."fact_orders" ("order_id", "customer_id", "product_id", "order_date", "amount")
    (
        select "order_id", "customer_id", "product_id", "order_date", "amount"
        from "fact_orders__dbt_tmp20260327124003320658"
    )
  