/*
Exercise #1:
Use two common table expressions and a SUM() function in the SELECT statement of a query to obtain the number of male employees 
whose highest salaries have been below the all-time average.
*/
WITH cte_avg_salary AS (
	SELECT AVG(salary) AS avg_salary
	FROM salaries), 
cte_m_highest_salary AS(
	SELECT s.emp_no, MAX(s.salary) AS m_highest_salary
	FROM salaries s
	JOIN employees e ON e.emp_no = s.emp_no AND e.gender = 'M'
	GROUP BY s.emp_no)
SELECT 
    SUM(CASE
        WHEN c2.m_highest_salary < c1.avg_salary THEN 1
        ELSE 0
    END) AS m_highest_salaries_below_avg,
    COUNT(e.emp_no) AS no_of_male_contracts
FROM
    employees e
        JOIN
    cte_m_highest_salary c2 ON e.emp_no = c2.emp_no
        CROSS JOIN
    cte_avg_salary c1;