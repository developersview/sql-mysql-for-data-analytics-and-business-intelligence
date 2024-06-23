SELECT 
    em.emp_no, em.first_name, em.last_name, sl.salary
FROM
    employees em
        INNER JOIN
    salaries sl ON em.emp_no = sl.emp_no
WHERE
    sl.salary > 150000;
    
-- exercise
SELECT 
    em.first_name, em.last_name, em.hire_date, tt.title
FROM
    employees em
        INNER JOIN
    titles tt ON em.emp_no = tt.emp_no
WHERE
    em.first_name = 'Margareta'
        AND em.last_name = 'Markovitch'
ORDER BY em.emp_no;