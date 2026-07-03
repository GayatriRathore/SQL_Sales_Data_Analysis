SELECT
order_id,
COUNT(*)
FROM orders
GROUP BY order_id
HAVING COUNT(*)>1;

SELECT *
FROM customers
WHERE customer_name IS NULL;