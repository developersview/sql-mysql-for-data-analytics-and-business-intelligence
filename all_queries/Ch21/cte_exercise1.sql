/*
Exercise #1:
Use a CTE (a Common Table Expression) and a SUM() function 
n the SELECT statement in a query to find out how many male employees have never signed a contract with a salary value 
higher than or equal to the all-time company salary average.
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
        JOIN
    cte c;