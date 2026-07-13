SELECT c.id, c.name, ce.name, ct.name
FROM cars AS c
         LEFT JOIN car_transmissions AS ct on ct.id = c.transmission_id
         INNER JOIN car_engines AS ce on ce.id = c.engine_id
