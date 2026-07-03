WITH customer_sales AS
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
)

SELECT *
FROM customer_sales
WHERE total_sales>1000
ORDER BY total_sales DESC;