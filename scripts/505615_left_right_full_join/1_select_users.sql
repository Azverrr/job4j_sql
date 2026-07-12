SELECT
    u.id,
    u.name,
    count(o.id) as order_count
FROM users AS u
LEFT JOIN orders AS o ON o.user_id = u.id
GROUP BY u.id, u.name
ORDER BY u.id