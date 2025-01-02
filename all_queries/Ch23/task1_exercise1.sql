/*
How many female employees have signed their contracts before January 1, 1998 
according to the data in the dept_emp table? Also, determine the relevant number for male employees.
*/
SELECT 
    CASE
        WHEN tde.from_date < '1998-01-01' THEN 'before'
        ELSE 'on or after'
    END AS jan_1_1998,
    te.gender,
    COUNT(te.emp_no) AS num_of_employees
FROM
    t_employees te
        JOIN
    t_dept_emp tde ON te.emp_no = tde.emp_no
GROUP BY jan_1_1998, te.gender;