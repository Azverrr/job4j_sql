SELECT c.id, c.name, cb.name, ce.name
FROM cars AS c
         INNER JOIN car_engines AS ce on ce.id = c.engine_id
         LEFT JOIN car_bodies AS cb on cb.id = c.body_id
WHERE c.body_id IS NULL