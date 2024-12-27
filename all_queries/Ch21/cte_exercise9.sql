/*
Exercise #3:
Does the result from the previous exercise change if you used the Common Table Expression (CTE) 
for the male employees' highest salaries in a FROM clause, as opposed to in a join?
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
    COUNT(CASE
        WHEN c2.m_highest_salary < c1.avg_salary THEN 1
        ELSE NULL
    END) AS m_highest_salaries_below_avg,
    COUNT(c2.emp_no) AS no_of_male_contracts
FROM
    cte_m_highest_salary c2
        CROSS JOIN
    cte_avg_salary c1;