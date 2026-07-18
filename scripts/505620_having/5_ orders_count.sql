SELECT o.id, sum(oi.quantity) AS total_quantity
FROM orders AS o
         JOIN order_items AS oi ON o.id = oi.order_id
GROUP BY o.id
HAVING sum(oi.quantity) >= 4