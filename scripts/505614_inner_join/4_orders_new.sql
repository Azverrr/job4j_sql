SELECT o.id, o.status, u.name
FROM orders AS o
         INNER JOIN users AS u ON o.user_id = u.id
WHERE o.status = 'NEW'