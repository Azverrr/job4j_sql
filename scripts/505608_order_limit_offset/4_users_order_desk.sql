SELECT id, name, email
FROM users
order by created_at DESC, id DESC
LIMIT 20 OFFSET 20