/*
Without allowing gaps in the obtained ranks for subsequent rows, 
rank the contract salary values from highest to lowest for employees 10001, 10002, and 10003.
Every row in the desired output should contain the relevant employee number (emp_no) and the hire date (hire_date) 
from the employees table, as well as the relevant salary value and the start date (from_date) from the salaries table. 
Additionally, include the salary ranking values in a field named employee_salary_ranking.
Retrieve only data for contracts that have started prior to 2000. 
Sort your data by the  emp_no in ascending order, referring to the employees table.
*/
SELECT 
    e.emp_no, 
    DENSE_RANK() OVER w AS employee_salary_ranking,
    s.salary,
    e.hire_date,
    s.from_date
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
    AND YEAR(s.from_date) < 2000
WHERE e.emp_no BETWEEN 10001 AND 10003
WINDOW w AS (PARTITION BY e.emp_no ORDER BY s.salary DESC)
ORDER BY e.emp_no ASC;