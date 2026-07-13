SELECT c.id, c.name, cb.name, ce.name, ct.name
FROM cars AS c
         INNER JOIN car_bodies as cb ON c.body_id = cb.id
         LEFT JOIN car_engines AS ce on c.engine_id = ce.id
         LEFT JOIN car_transmissions AS ct ON c.transmission_id = ct.id
WHERE cb.name ~* ('sedan|hatchback|suv')