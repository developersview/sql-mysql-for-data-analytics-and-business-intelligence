/*
Considering the salary contracts signed by male employees in the company, 
how many have been signed for a value above the average? 
Store the output in a column named no_m_salaries_above_avg. 
In a second column named no_of_m_salary_contracts, provide the total number of contracts signed by men.
Use the salary column from the salaries table and the gender column from the employees table. 
Match the two tables on the employee number column (emp_no).
*/
SELECT 
    SUM(CASE
        WHEN s.salary > a.avg_salary THEN 1
        ELSE 0
    END) AS no_m_salaries_above_avg,
    COUNT(s.salary) AS no_of_m_salary_contracts
FROM
    (SELECT 
        AVG(salary) AS avg_salary
    FROM
        salaries) a
        JOIN
    salaries s
        JOIN
    employees e ON s.emp_no = e.emp_no AND e.gender = 'M';