SELECT id, name, discount_price, COALESCE(discount_price, price) AS final_price
FROM products