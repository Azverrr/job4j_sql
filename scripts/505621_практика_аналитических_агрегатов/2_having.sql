SELECT p.category, sum(oi.quantity) AS total_items_sold, sum(p.price * oi.quantity) AS category_revenue
FROM products AS p
         JOIN order_items AS oi ON p.product_id = oi.product_id
         JOIN orders AS o ON oi.order_id = o.order_id
WHERE o.status = 'completed'
GROUP BY p.category
HAVING sum(p.price * oi.quantity) > 30000