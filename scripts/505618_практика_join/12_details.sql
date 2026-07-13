SELECT 'body' AS detail_type, cb.id AS detail_id, cb.name AS detail_name
FROM car_bodies cb
         LEFT JOIN cars c on cb.id = c.body_id
WHERE c.body_id IS NULL
UNION
SELECT 'engine' AS detail_type, ce.id AS detail_id, ce.name AS detail_name
FROM car_engines ce
         LEFT JOIN cars c on ce.id = c.engine_id
WHERE c.engine_id IS NULL
UNION
SELECT 'transmission' AS detail_type, ct.id AS detail_id, ct.name AS detail_name
FROM car_transmissions ct
         LEFT JOIN cars c on ct.id = c.transmission_id
WHERE c.transmission_id IS NULL