SELECT p.id, p.name, count(oi.product_id) AS order_items_count, sum(oi.quantity) AS total_quantity
FROM products AS p
         JOIN order_items AS oi ON p.id = oi.product_id
GROUP BY p.id, p.name