SELECT o.id, o.status, u.email
FROM orders AS o
         INNER JOIN users AS u ON o.user_id = u.id