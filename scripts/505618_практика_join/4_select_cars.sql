SELECT c.id, c.name, cb.name
FROM cars AS c
         LEFT JOIN car_bodies as cb on c.body_id = cb.id