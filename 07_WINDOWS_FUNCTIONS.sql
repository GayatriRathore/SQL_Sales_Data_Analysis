SELECT
customer_name,
total_sales,
RANK() OVER(ORDER BY total_sales DESC) AS sales_rank
FROM
(
SELECT
c.customer_name,
SUM(o.quantity*p.price) total_sales
FROM orders o
JOIN customers c
ON o.customer_id=c.customer_id
JOIN products p
ON o.product_id=p.product_id
GROUP BY c.customer_name
)t;

SELECT
order_date,
SUM(quantity*price) daily_sales,
SUM(SUM(quantity*price))
OVER(ORDER BY order_date) running_total
FROM orders
JOIN products
ON orders.product_id=products.product_id
GROUP BY order_date
ORDER BY order_date;