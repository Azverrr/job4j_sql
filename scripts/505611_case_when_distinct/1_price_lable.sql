SELECT id,
       name,
       price,
       CASE
           WHEN price < 5000 THEN 'CHEAP'
           WHEN price BETWEEN 5000 AND 50000 THEN 'REGULAR'
           ELSE 'PREMIUM'
           END as price_lable
FROM products