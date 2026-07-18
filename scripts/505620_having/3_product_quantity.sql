SELECT p.id, p.name, sum(quantity) as total_quantity
FROM products AS p
         JOIN order_items AS oi on p.id = oi.product_id
WHERE oi.unit_price >= 1000
GROUP BY p.id, p.name
HAVING  sum(quantity) >= 5