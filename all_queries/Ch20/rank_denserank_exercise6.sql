/*
Order and rank all contract salary values of employee 10002 from highest to lowest. 
Store the row numbers in a third column named order_num. Assign the same rank to identical salary values allowing gaps in the obtained ranks for subsequent rows.
To obtain the desired values, refer to the employee number (emp_no) and salary (salary) columns from the salaries table.
*/
SELECT 
    emp_no, salary, RANK() OVER w AS order_num
FROM
    salaries
WHERE emp_no = 10002
WINDOW w AS (PARTITION BY emp_no ORDER BY salary DESC);