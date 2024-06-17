SELECT name
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM employees
    ORDER BY salary DESC
    LIMIT 1
);