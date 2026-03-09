-- Orders Above Average Revenue

select  order_id , revenue from orders where revenue > ( select avg(revenue) from orders);

--Products With Above Average Profit

select  products .product , Sum(orders. revenue - products . cost ) as product
  from products join orders on products.product_id = orders.product_id
   group by  products .product having sum(orders. revenue - products . cost )>
 ( select avg(revenue -cost)  from orders join products 
  on products.product_id = orders.product_id);

--Customers Spending Above Average

SELECT customers.name,
SUM(orders.revenue) AS total_spent
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.name
HAVING SUM(orders.revenue) >
(
    SELECT AVG(customer_total)
    FROM (
        SELECT SUM(revenue) AS customer_total
        FROM orders
        GROUP BY customer_id
    ) AS customer_spending
);
