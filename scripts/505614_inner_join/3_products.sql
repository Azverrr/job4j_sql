SELECT o.id, p.name, oi.quantity, oi.unit_price
FROM products AS p
         INNER JOIN order_items oi ON p.id = oi.product_id
         INNER JOIN orders o ON oi.order_id = o.id
         INNER JOIN users u on o.user_id = u.id
WHERE u.id = 1