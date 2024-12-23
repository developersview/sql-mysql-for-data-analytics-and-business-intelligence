/*
For employees with employee numbers between 10003 and 10008, inclusive, 
and their salary contracts with values less than $70,000, retrieve the following data from the salaries table:
- employee number (emp_no)
- salary (salary)
- previous salary (previous_salary)
- next salary (next_salary)
- the difference between the current salary of a certain employee and their previous salary (diff_salary_current_previous)
- the difference between the next salary of a certain employee and their current salary (diff_salary_next_current).
Observe the following excerpt from the desired output to see how to organize the field list in your SELECT statement
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
WHERE emp_no BETWEEN 10003 AND 10008
	  AND salary < 70000
WINDOW w AS (PARTITION BY emp_no ORDER BY salary);