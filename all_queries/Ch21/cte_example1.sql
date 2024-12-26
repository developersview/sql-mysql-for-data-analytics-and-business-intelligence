SELECT 
    AVG(salary) AS avg_salary
FROM
    salaries;
    

WITH cte AS (SELECT AVG(salary) AS avg_salary FROM salaries)
SELECT 
    *
FROM
    salaries s
		JOIN
	cte c;


WITH cte AS (SELECT AVG(salary) AS avg_salary FROM salaries)
SELECT     SUM(CASE WHEN s.salary > c.avg_salary THEN 1 ELSE 0 END) AS no_f_salaries_above_avg,
           COUNT(s.salary)    AS total_number_of_contracts
FROM       salaries s
JOIN       employees e
ON         s.emp_no = e.emp_no AND e.gender = 'F'
CROSS JOIN cte c;

WITH cte AS (SELECT AVG(salary) AS avg_salary FROM salaries)
SELECT     SUM(CASE WHEN s.salary < c.avg_salary THEN 1 ELSE 0 END) AS no_f_salaries_below_avg,
           COUNT(s.salary)    AS total_number_of_contracts
FROM       salaries s
JOIN       employees e
ON         s.emp_no = e.emp_no AND e.gender = 'F'
CROSS JOIN cte c;