SELECT 
    *
FROM
    department_dup
ORDER BY dept_no ASC;

SELECT 
    dept_no,
    COALESCE(dept_name,
            'Department name not provided') AS dept_name
FROM
    department_dup;
    

SELECT 
    dept_no,
    COALESCE(dept_name, 'Department name not provided') AS dept_name,
    COALESCE(dept_manager, dept_name, 'N/A') AS dept_manager
FROM
    department_dup
ORDER BY dept_no ASC;    


SELECT 
    dept_no,
    dept_name,
    dept_manager,
    ('department manager name') AS fake_col
FROM
    department_dup;