SELECT u.id, u.name, count(o.id)
FROM users AS u
         LEFT JOIN orders AS o on u.id = o.user_id
GROUP BY u.id, u.name