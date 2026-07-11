SELECT id,
       name,
       phone,
       CASE
           WHEN phone IS NULL THEN 'not specified'
           ELSE 'specified'
           END as phone_status
FROM users