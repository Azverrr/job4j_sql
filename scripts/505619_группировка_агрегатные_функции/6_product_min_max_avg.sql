SELECT p.id,
       p.name,
       min(oi.unit_price) AS min_unit_price,
       max(oi.unit_price) AS max_unit_price,
       avg(oi.unit_price) AS avg_unit_price
FROM products AS p
         JOIN order_items as oi on p.id = oi.product_id
GROUP BY p.id, p.name