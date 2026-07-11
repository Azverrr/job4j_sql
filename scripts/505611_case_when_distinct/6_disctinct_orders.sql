SELECT DISTINCT ON (name) id, name, price
FROM products
ORDER BY name, price DESC, id