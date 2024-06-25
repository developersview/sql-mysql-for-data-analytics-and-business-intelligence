SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    dm.from_date,
    dp.dept_name
FROM
    employees e
        INNER JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
        INNER JOIN
    departments dp ON dm.dept_no = dp.dept_no
ORDER BY e.first_name;


SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    dm.from_date,
    dp.dept_name
FROM
    departments dp
        INNER JOIN
    dept_manager dm ON dp.dept_no = dm.dept_no
        RIGHT JOIN
    employees e ON dm.emp_no = e.emp_no
-- WHERE
--     dm.from_date IS NOT NULL
ORDER BY dm.from_date DESC , e.first_name ASC;


-- excercise
SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    t.title,
    dm.from_date,
    dp.dept_name
FROM
    employees e
        INNER JOIN
    titles t ON e.emp_no = t.emp_no
        INNER JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
        INNER JOIN
    departments dp ON dm.dept_no = dp.dept_no
WHERE
    t.title = 'manager'
ORDER BY e.first_name;