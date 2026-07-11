SELECT id, name, price
FROM products
WHERE is_active = true
  AND (price < 3000 or price > 150000)