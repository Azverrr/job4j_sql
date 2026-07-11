SELECT DISTINCT ON (user_id) id, user_id, status, created_at
FROM orders
ORDER BY user_id, created_at DESC, id