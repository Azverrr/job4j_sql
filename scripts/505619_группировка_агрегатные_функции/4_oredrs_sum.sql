SELECT o.id, count(oi.order_id) AS items_count, sum(oi.quantity * oi.unit_price) AS orders_total
FROM orders AS o
         JOIN order_items AS oi on o.id = oi.order_id
GROUP BY o.id