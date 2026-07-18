SELECT u.id, u.name, o.status, count(o.id) AS order_count
FROM users AS u
         JOIN orders AS o on u.id = o.user_id
GROUP BY u.id, u.name, o.status
HAVING count(o.id) > 1