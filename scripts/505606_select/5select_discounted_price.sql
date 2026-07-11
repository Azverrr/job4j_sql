SELECT id           AS product_id,
       name         AS product_name,
       price,
       price * 0.90 AS discounted_price
FROM products