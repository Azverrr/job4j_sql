SELECT r.code, ur.user_id
FROM roles AS r
         LEFT JOIN user_roles AS ur ON ur.role_id = r.id