/*
Order and number all contract salary values of employee 10002 from highest to lowest. 
Store the row numbers in a third column named order_num which assigns different row numbers to identical salary values.
To obtain the desired values, refer to the employee number (emp_no) and salary (salary) columns from the salaries table.
*/
SELECT 
    emp_no, salary, ROW_NUMBER() OVER w AS order_num
FROM
    salaries
WHERE emp_no = 10002
WINDOW w AS (PARTITION BY emp_no ORDER BY salary DESC);