SELECT u.id, u.name, count(o.id) AS paid_orders_count
FROM users AS u
         JOIN orders AS o on u.id = o.user_id
WHERE o.status = 'PAID'
GROUP BY u.id, u.name
HAVING count(o.id) >= 2