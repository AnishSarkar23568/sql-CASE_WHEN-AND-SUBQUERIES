-- Query 1 — Classify Orders (CASE WHEN)
select  order_id , revenue ,case when revenue >=2000 then 'high value'
   when revenue >=1000 then 'Medium value'
   else 'low value'
   end as order_category from orders ;


--Query 2 — Classify Products by Profit
 SELECT products.product,
SUM(orders.revenue - products.cost) AS profit,
CASE
    WHEN SUM(orders.revenue - products.cost) >= 800 THEN 'High Profit'
    WHEN SUM(orders.revenue - products.cost) >= 400 THEN 'Medium Profit'
    ELSE 'Low Profit'
END AS profit_category
FROM products
JOIN orders
ON products.product_id = orders.product_id
GROUP BY products.product;


-- Show orders where revenue is higher than the average revenue of all orders.

 select  products .product ,avg(orders. revenue ) as avg_revenue , case  
    when avg(orders. revenue )>=1000 then 'high profit'
    when avg(orders. revenue ) >=100 then 'Medium  profit'
    else 'low profit'
    end as revenue_category from products
   join orders on products.product_id = orders.product_id
  group by  products .product;
