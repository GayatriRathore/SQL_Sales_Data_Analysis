--Top Selling Products
SELECT
product_name,
SUM(quantity) total_quantity
FROM orders
JOIN products
ON orders.product_id=products.product_id
GROUP BY product_name
ORDER BY total_quantity DESC;

--Highest Spending Customer 
SELECT
customer_name,
SUM(quantity*price) total_sales
FROM orders
JOIN customers
ON orders.customer_id=customers.customer_id
JOIN products
ON orders.product_id=products.product_id
GROUP BY customer_name
ORDER BY total_sales DESC;

--Category wise Sales
SELECT
category,
SUM(quantity*price) total_sales
FROM orders
JOIN products
ON orders.product_id=products.product_id
GROUP BY category;