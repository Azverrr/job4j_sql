SELECT id, user_id, status, created_at
FROM orders
WHERE status <> 'CANCELLED'
  AND user_id = 1