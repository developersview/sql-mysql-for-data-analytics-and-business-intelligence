/*
How many women (employees.gender = 'F') in the company have their highest salary contract below the company average?  
Store your output in a column named highest_f_salaries_below_total_avg.
Use the salary column from the salaries table and the gender column from the employees table. 
Match the two tables on the employee number column (emp_no)
*/
WITH cte1 AS (
	SELECT AVG(salary) AS avg_salary
	FROM salaries), 
cte2 AS(
	SELECT s.emp_no, MAX(s.salary) AS f_highest_salary
	FROM salaries s
	JOIN employees e ON e.emp_no = s.emp_no AND e.gender = 'F'
	GROUP BY s.emp_no)
SELECT 
    SUM(CASE
        WHEN c2.f_highest_salary < c1.avg_salary THEN 1
        ELSE 0
    END) AS highest_f_salaries_below_total_avg
FROM
    employees e
        JOIN
    cte2 c2 ON e.emp_no = c2.emp_no
        CROSS JOIN
    cte1 c1;
