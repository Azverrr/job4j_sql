SELECT p.id, p.name, min(oi.unit_price) AS min_unit_price, max(oi.unit_price) AS max_unin_price
FROM products AS p
         JOIN order_items AS oi on p.id = oi.product_id
GROUP BY p.id, p.name
HAVING max(oi.unit_price) > 5000