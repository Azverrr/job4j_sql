SELECT cb.id, cb.name
FROM car_bodies AS cb
         LEFT JOIN cars AS c on c.body_id = cb.id
WHERE c.body_id IS NULL