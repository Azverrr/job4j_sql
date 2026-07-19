SELECT o.customer_name AS customer_name, sum(p.price * oi.quantity) AS total_revenue
FROM orders AS o
         JOIN order_items AS oi on o.order_id = oi.order_id
         JOIN products AS p on oi.product_id = p.product_id
WHERE o.status = 'completed'
GROUP BY o.customer_name
ORDER BY sum(p.price * oi.quantity) DESC
LIMIT 2