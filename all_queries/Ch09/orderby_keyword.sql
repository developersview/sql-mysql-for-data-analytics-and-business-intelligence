SELECT 
    *
FROM
    employees
ORDER BY first_name ASC , last_name ASC;


SELECT 
    e.emp_no, e.first_name, e.last_name
FROM
    employees e
ORDER BY emp_no DESC;