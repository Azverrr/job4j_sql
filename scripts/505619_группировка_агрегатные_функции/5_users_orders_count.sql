SELECT u.id, u.name, o.status, count(o.id)
FROM users AS u
         LEFT JOIN orders AS o on u.id = o.user_id
GROUP BY u.id, u.name, o.status
ORDER BY u.name, o.status