/*
In a subquery named a, join the salaries and dept_emp tables ON employee number (emp_no), 
as well as the dept_emp and departments tables ON department number (dept_no) 
to select the department number (dept_no) from the dept_emp table, the department name (dept_name) from the departments table, 
and the salary (salary) from the salaries table. Use this subset in an outer query to retrieve: 
- the distinct department numbers (dept_no) from a
- the relevant department name (dept_name)
- the smallest salary value recorded for the given department (min_salary)
- the highest salary value recorded for the given department (max_salary)
- the average salary value recorded for the given department (avg_salary), rounded to the nearest dollar.
Sort the final output by department number (dept_no) in ascending order.
*/
SELECT 
    DISTINCT a.dept_no,
    a.dept_name,
    MIN(a.salary) OVER w AS min_salary,
    MAX(a.salary) OVER w AS max_salary,
    ROUND((AVG(a.salary) OVER w)) AS avg_salary
FROM (
    SELECT 
        de.dept_no,
        d.dept_name,
        s.salary
    FROM 
        salaries s
    JOIN 
        dept_emp de ON s.emp_no = de.emp_no
    JOIN 
        departments d ON de.dept_no = d.dept_no
) a
WINDOW w AS (PARTITION BY a.dept_no ORDER BY a.dept_no ASC);