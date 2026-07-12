SELECT oi.id, o.id, p.name, oi.quantity
FROM order_items AS oi
         INNER JOIN orders AS o ON oi.order_id = o.id
         INNER JOIN products AS p ON oi.product_id = p.id
WHERE oi.quantity > 1