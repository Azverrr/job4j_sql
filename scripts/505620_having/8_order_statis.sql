SELECT o.status, avg(oi.quantity * oi.unit_price)
FROM orders AS o
         JOIN order_items AS oi on o.id = oi.order_id
WHERE o.created_at >= DATE '2025-01-01'
GROUP BY o.status
HAVING avg(oi.quantity * oi.unit_price) > 2000