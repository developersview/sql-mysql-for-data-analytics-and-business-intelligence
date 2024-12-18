/*
Retrieve the employee number (emp_no) and job title (title) from the titles table, 
and the salary (salary) from the salaries table. Add a column to the left, named row_num1, 
starting from 1 incrementing by 1 for each row from the obtained result. 
Also, add a fifth column, named row_num2, which provides a row position for each record per employee, 
starting from the total number of records obtained for that employee and continuing down to 1.
Include only data about 'Staff' members and employees with a number no greater than 10006. 
Order the result by employee number (emp_no), salary, and row_num1 in ascending order.
*/
SELECT 
    ROW_NUMBER() OVER() AS row_num1,
    t.emp_no,
    t.title,
    s.salary,
    ROW_NUMBER() OVER(PARTITION BY t.emp_no ORDER BY s.salary DESC) AS row_num2
FROM
    titles t
        JOIN
    salaries s ON t.emp_no = s.emp_no
WHERE t.title = 'Staff' AND t.emp_no <= 10006
ORDER BY t.emp_no, s.salary, row_num1 ASC;