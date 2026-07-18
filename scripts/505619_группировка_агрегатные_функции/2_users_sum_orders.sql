SELECT u.id, u.name, SUM(oi.quantity * oi.unit_price) AS total_spent
FROM users AS u
         INNER JOIN orders AS o on u.id = o.user_id
         INNER JOIN order_items AS oi on o.id = oi.order_id
GROUP BY u.id, u.name
ORDER BY u.name