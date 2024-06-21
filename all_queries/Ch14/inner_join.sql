SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup2 d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;


SELECT 
    em.emp_no,
    em.first_name,
    em.last_name,
    dm.dept_no,
    em.hire_date
FROM
    dept_manager dm
        INNER JOIN
    employees em ON dm.emp_no = em.emp_no
ORDER BY em.emp_no;
