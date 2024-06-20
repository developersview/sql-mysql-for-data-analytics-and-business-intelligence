SELECT 
    *
FROM
    department_dup
ORDER BY dept_no DESC;


SELECT 
    dept_no,
    IFNULL(dept_name,
            'Department name not provided') AS dept_name
FROM
    department_dup;