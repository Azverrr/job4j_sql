SELECT u.id, u.name, sum(oi.unit_price * oi.quantity) AS total_spend
FROM users AS u
         JOIN orders AS o on u.id = o.user_id
         JOIN order_items AS oi on o.id = oi.order_id
GROUP BY u.id, u.name
HAVING sum(oi.unit_price * oi.quantity) > 10000