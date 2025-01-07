/*
Find the average salary of the male and female employees in each department.
*/
USE employees;
SELECT
    d.dept_name,
    e.gender,
    CONCAT('$', ROUND(AVG(s.salary), 2)) AS avg_salary
FROM
    salaries s
        JOIN
    employees e ON s.emp_no = e.emp_no
        JOIN
    dept_emp de ON e.emp_no = de.emp_no
        JOIN
    departments d ON de.dept_no = d.dept_no
GROUP BY de.dept_no , e.gender
ORDER BY de.dept_no;