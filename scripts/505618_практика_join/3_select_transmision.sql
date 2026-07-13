SELECT ct.id, ct.name
FROM car_transmissions AS ct
         LEFT JOIN cars AS c on c.transmission_id = ct.id
WHERE c.transmission_id IS NULL