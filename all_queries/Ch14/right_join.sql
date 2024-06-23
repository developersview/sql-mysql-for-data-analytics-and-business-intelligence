SELECT 
    dm.dept_no,
    dm.emp_no,
    dm.from_date AS joining_date,
    dd.dept_name
FROM
    dept_manager_dup dm
        RIGHT JOIN
    departments_dup2 dd ON dm.dept_no = dd.dept_no
ORDER BY dm.dept_no;


SELECT 
    em.emp_no,
    em.first_name,
    em.last_name,
    d.dept_no,
    d.from_date
FROM
    employees em
        RIGHT JOIN
    dept_manager d ON em.emp_no = d.emp_no
WHERE
    em.last_name = 'Markovitch'
ORDER BY d.dept_no DESC , em.emp_no ASC;