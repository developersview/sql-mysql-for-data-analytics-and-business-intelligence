#female employees whose highest salaries are greater than avg salary of employees with the percentage
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
        WHEN c2.f_highest_salary > c1.avg_salary THEN 1
        ELSE 0
    END) AS f_highest_salaries_above_avg,
    COUNT(e.emp_no) AS no_of_female_contracts,
    CONCAT(ROUND((SUM(CASE
                        WHEN c2.f_highest_salary > c1.avg_salary THEN 1
                        ELSE 0
                    END) / COUNT(e.emp_no) * 100),
                    2),
            '%') AS f_highest_salaries_percentage
FROM
    employees e
        JOIN
    cte2 c2 ON e.emp_no = c2.emp_no
        CROSS JOIN
    cte1 c1;