/*
Create a temporary table named male_min_salaries containing the employee number (emp_no) 
and the lowest salary (salary, with an alias min_salary) for each male employee (gender = 'M') in the company.
To solve the given task, refer to the salaries and employees tables.
*/
DROP TABLE IF EXISTS male_min_salaries;
CREATE TEMPORARY TABLE male_min_salaries AS
SELECT 
    s.emp_no, MIN(s.salary) AS min_salary
FROM
    salaries s
        JOIN
    employees e ON e.emp_no = s.emp_no AND e.gender = 'M'
GROUP BY s.emp_no;