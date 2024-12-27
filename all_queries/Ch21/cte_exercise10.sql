/*
Considering the salary contracts signed by female employees in the company, 
how many have been signed for a value below the average? Store the output in a column named no_f_salaries_below_avg. In a second column named total_no_of_salary_contracts, 
provide the total number of contracts signed by all employees in the company.
Use the salary column from the salaries table and the gender column from the employees table. 
Match the two tables on the employee number column (emp_no).
*/
WITH cte AS (
    SELECT AVG(salary) AS avg_salary FROM salaries
),
cte2 AS (
    SELECT COUNT(salary) AS total_no_of_salary_contracts FROM salaries
)
SELECT 
    SUM(CASE
        WHEN s.salary < c.avg_salary THEN 1
        ELSE 0
    END) AS no_f_salaries_below_avg,
    (SELECT total_no_of_salary_contracts FROM cte2) AS total_no_of_salary_contracts
FROM
    salaries s
        JOIN
    employees e ON s.emp_no = e.emp_no AND e.gender = 'F'
        JOIN
    cte c;