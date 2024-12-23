/*
Exercise #1:
Write a query that can extract the following information from the "employees" database:
- the salary values (in ascending order) of the contracts signed by all employees numbered between 10500 and 10600 inclusive
- a column showing the previous salary from the given ordered list
- a column showing the subsequent salary from the given ordered list
- a column displaying the difference between the current salary of a certain employee and their previous salary
- a column displaying the difference between the next salary of a certain employee and their current salary
Limit the output to salary values higher than $80,000 only.
Also, to obtain a meaningful result, partition the data by employee number.
*/
SELECT 
    emp_no,
    salary,
    LAG(salary) OVER w AS previous_salary,
    LEAD(salary) OVER w AS next_salary,
    (salary - LAG(salary) OVER w) AS diff_salary_current_previous,
    (LEAD(salary) OVER w - salary) AS diff_salary_next_current
FROM
    salaries
WHERE emp_no BETWEEN 10500 AND 10600
	  AND salary > 80000
WINDOW w AS (PARTITION BY emp_no ORDER BY salary);