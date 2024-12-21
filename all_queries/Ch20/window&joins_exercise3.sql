/*
Allowing gaps in the obtained ranks for subsequent rows, 
rank the contract salary values from highest to lowest for employees 10001, 10002, 10003, 10004, 10005, and 10006.
Every row in the desired output should contain an employee number (emp_no) obtained from the employees table, 
and a salary value obtained from the salaries table. Additionally, 
include the salary ranking values between the two columns in a field named employee_salary_ranking.
*/

SELECT 
    e.emp_no, 
    s.salary,
    RANK() OVER w AS employee_salary_ranking
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE e.emp_no BETWEEN 10001 AND 10006
WINDOW w AS (PARTITION BY e.emp_no ORDER BY s.salary DESC);