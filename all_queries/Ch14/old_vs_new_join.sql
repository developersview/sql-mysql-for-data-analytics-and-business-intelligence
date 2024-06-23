-- old join syntax (redundant)
SELECT 
    em.emp_no,
    em.first_name,
    em.last_name,
    dm.dept_no,
    em.hire_date
FROM
    employees em,
    dept_manager dm
WHERE
    em.emp_no = dm.emp_no;
    
    
-- new join syntax
SELECT 
    em.emp_no,
    em.first_name,
    em.last_name,
    dm.dept_no,
    em.hire_date
FROM
    employees em
        INNER JOIN
    dept_manager dm ON em.emp_no = dm.emp_no;
    