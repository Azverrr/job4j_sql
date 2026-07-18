SELECT o.status, count(o.id)
FROM orders AS o
GROUP BY o.status
HAVING count(o.id) > 2