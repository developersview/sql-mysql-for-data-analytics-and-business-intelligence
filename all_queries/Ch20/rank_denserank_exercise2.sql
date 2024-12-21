/*
Exercise #2:
Write a query that upon execution, 
displays the number of salary contracts that each manager has ever signed while working in the company.
*/
SELECT 
    dm.emp_no, COUNT(s.salary) AS no_of_salary_contracts
FROM
    dept_manager dm
        JOIN
    salaries s ON dm.emp_no = s.emp_no
GROUP BY emp_no
ORDER BY emp_no;