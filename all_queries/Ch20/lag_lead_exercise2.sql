/*
Exercise #2:
The MySQL LAG() and LEAD() value window functions can have a second argument, 
designating how many rows/steps back (for LAG()) or forth (for LEAD()) we'd like to refer to with respect to a given record.
With that in mind, create a query whose result set contains data arranged by the salary values associated to each employee number 
(in ascending order). Let the output contain the following six columns:
- the employee number
- the salary value of an employee's contract (i.e. which we’ll consider as the employee's current salary)
- the employee's previous salary
- the employee's contract salary value preceding their previous salary
- the employee's next salary
- the employee's contract salary value subsequent to their next salary
Restrict the output to the first 1000 records you can obtain.
*/
SELECT 
    emp_no,
    salary,
    LAG(salary) OVER w AS previous_salary,
    LAG(salary, 2) OVER w AS one_before_previous_salary,
    LEAD(salary) OVER w AS next_salary,
    LEAD(salary, 2) OVER w AS one_after_next_salary
FROM
    salaries
WINDOW w AS (PARTITION BY emp_no ORDER BY salary)
LIMIT 1000;