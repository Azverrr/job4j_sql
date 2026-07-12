SELECT r.code AS role_code, e.code AS environment_code
FROM roles AS r
         CROSS JOIN environments AS e