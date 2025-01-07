/*
Find the average salary of male and female employees in each department. 
The desired result set should contain three columns: 
department name (dept_name), gender (gender), and average salary (avg_salary). 
Apply only to average salary values higher than $70,000. Order your output by department number, starting with the highest value.
*/
USE employees;
SELECT 
    d.dept_name, e.gender, AVG(s.salary) AS avg_salary
FROM
    salaries s
        JOIN
    employees e ON s.emp_no = e.emp_no
        JOIN
    dept_emp de ON e.emp_no = de.emp_no
        JOIN
    departments d ON de.dept_no = d.dept_no
GROUP BY de.dept_no , e.gender
HAVING avg_salary > 70000
ORDER BY de.dept_no;