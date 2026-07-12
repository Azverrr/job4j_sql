SELECT r.name, count(ur.user_id) AS count_users
FROM roles AS r
         LEFT JOIN user_roles AS ur ON ur.role_id = r.id
GROUP BY r.id, r.code
ORDER BY r.code