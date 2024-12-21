/*
Exercise #1:
Write a query that ranks the salary values in descending order of all contracts signed by employees numbered between 10500 and 10600 inclusive. 
Let equal salary values for one and the same employee bear the same rank. Also, allow gaps in the ranks obtained for their subsequent rows.
Use a join on the “employees” and “salaries” tables to obtain the desired result.
*/
SELECT 
    e.emp_no, 
    s.salary,
    RANK() OVER w AS employee_salary_ranking
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE e.emp_no BETWEEN 10500 AND 10600
WINDOW w AS (PARTITION BY e.emp_no ORDER BY s.salary DESC);