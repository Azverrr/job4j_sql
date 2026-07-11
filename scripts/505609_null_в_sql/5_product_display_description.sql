SELECT id, name, COALESCE(description, 'описание отсутствует') AS display_description
FROM products