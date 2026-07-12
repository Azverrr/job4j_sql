SELECT c.name, p.name
FROM categories AS c
         LEFT JOIN categories AS p on c.parent_id = p.id