SELECT o.status, count(o.id) AS orders_count
FROM orders AS o
GROUP BY o.status