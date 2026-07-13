SELECT c.id, c.name, cb.name, ce.name, ct.name
FROM cars AS c
         LEFT JOIN car_transmissions AS ct on ct.id = c.transmission_id
         LEFT JOIN car_engines AS ce on ce.id = c.engine_id
         LEFT JOIN car_bodies AS cb on cb.id = c.body_id
WHERE ct.id IS NULL
   OR ce.id IS NULL
   OR cb.id IS NULL