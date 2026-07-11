SELECT oi.id                 as item_id,
       orders.id             AS order_id,
       product_id,
       quantity,
       unit_price,
       quantity * unit_price AS total_line
FROM orders
         JOIN order_items AS oi ON orders.id = oi.order_id