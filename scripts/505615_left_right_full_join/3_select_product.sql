SELECT p.id,
       p.name,
       count(oi.id)
FROM products AS p
         INNER JOIN order_items AS oi on oi.product_id = p.id
GROUP BY p.id, p.name
ORDER BY p.id;