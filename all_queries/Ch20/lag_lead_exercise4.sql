/*
Retrieve the following data from the salaries table:
- employee number (emp_no)
- salary (salary)
- use a window function to obtain the salary value of three contracts prior to the given employee contract salary value, 
  if applicable. Name the column _before_previous_salary
- use a window function to obtain the salary value of three contracts after the given employee contract salary value, 
  if applicable. Name the column _after_next_salary.
To obtain the desired output, partition the data by employee number (emp_no) and order by salary (salary) in ascending order. 
Retrieve only the first one hundred rows of data.
*/
SELECT 
    emp_no,
    salary,
    LAG(salary, 3) OVER w AS _before_previous_salary,
    LEAD(salary, 3) OVER w AS _after_next_salary
FROM
    salaries
WINDOW w AS (PARTITION BY emp_no ORDER BY salary)
LIMIT 100;