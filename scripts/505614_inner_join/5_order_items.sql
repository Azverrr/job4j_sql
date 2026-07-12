SELECT oi.id,
       p.name,
       oi.quantity,
       oi.quantity * oi.unit_price AS total_price
FROM order_items AS oi
         INNER JOIN products AS p ON oi.product_id = p.id
