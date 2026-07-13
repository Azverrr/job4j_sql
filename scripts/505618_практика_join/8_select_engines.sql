SELECT ce.id, ce.name
FROM car_engines AS ce
         LEFT JOIN cars AS c on c.engine_id = ce.id
WHERE c.engine_id IS NULL