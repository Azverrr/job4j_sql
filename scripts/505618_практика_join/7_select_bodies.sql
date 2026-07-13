SELECT cb.id, cb.name, c.id, c.name
FROM car_bodies AS cb
         LEFT JOIN cars AS c on c.body_id = cb.id
ORDER BY cb.id, cb.name