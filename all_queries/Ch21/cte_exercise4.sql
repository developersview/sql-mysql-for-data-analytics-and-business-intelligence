/*
Exercise #4:
Use a cross join in a query to find out how many male employees have never signed a contract 
with a salary value higher than or equal to the all-time company salary average 
(i.e. to obtain the same result as in the previous exercise).
*/
WITH cte AS (
	SELECT AVG(salary) AS avg_salary 
    FROM salaries)
SELECT 
    SUM(CASE
        WHEN s.salary < c.avg_salary THEN 1
        ELSE 0
    END) AS no_m_salaries_above_avg,
    COUNT(s.salary) AS total_number_of_contracts
FROM
    salaries s
        JOIN
    employees e ON s.emp_no = e.emp_no AND e.gender = 'M'
        CROSS JOIN
    cte c;