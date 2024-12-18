SELECT 
    dm.emp_no,
    e.first_name,
    e.last_name,
    e.hire_date,
    MIN(s.salary) AS min_salary,
    MAX(s.salary) AS max_salary,
    MAX(s.salary) - MIN(s.salary) AS salary_difference,
    CASE
        WHEN MAX(s.salary) - MIN(s.salary) > 10000 THEN 'significant'
        WHEN MAX(s.salary) - MIN(s.salary) BETWEEN 0 AND 10000 THEN 'insignificant'
        ELSE 'salary decrease'
    END AS salary_raise
FROM
    dept_manager dm
        JOIN
    employees e ON dm.emp_no = e.emp_no
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    dm.emp_no > 10005
GROUP BY s.emp_no , e.first_name , e.last_name , e.hire_date
ORDER BY dm.emp_no;
