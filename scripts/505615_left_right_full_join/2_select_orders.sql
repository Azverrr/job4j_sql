SELECT o.id, o.status, o.created_at
FROM orders AS o
         LEFT JOIN payments AS p ON p.order_id = o.id
WHERE p.id IS NULL;