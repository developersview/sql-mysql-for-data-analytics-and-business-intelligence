/*
Considering the salary contracts signed by female employees in the company, 
how many have been signed for a value below the average? Store the output in a column named no_f_salaries_below_avg. 
In a second column named no_of_f_salary_contracts, provide the total number of contracts signed by women.
Use the salary column from the salaries table and the gender column from the employees table. 
Match the two tables on the employee number column (emp_no).
*/
WITH cte AS (
	SELECT AVG(salary) AS avg_salary 
    FROM salaries)
SELECT 
    SUM(CASE
        WHEN s.salary < c.avg_salary THEN 1
        ELSE 0
    END) AS no_f_salaries_below_avg,
    COUNT(s.salary) AS no_of_f_salary_contracts
FROM
    salaries s
        JOIN
    employees e ON s.emp_no = e.emp_no AND e.gender = 'F'
        CROSS JOIN
    cte c;