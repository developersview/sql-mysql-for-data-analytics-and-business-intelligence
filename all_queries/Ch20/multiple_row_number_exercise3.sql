/*
Retrieve the employee number (emp_no) and job title (title) from the titles table, 
and the salary (salary) from the salaries table. 
Add a fourth column, named row_num1, containing starting from 1 incrementing by 1 for each row for every employee from the obtained result. 
Also, add a fifth column, named row_num2, which provides the opposite values - starting from the total number of records obtained for a given employee and continuing down to 1.
Include only data about 'Staff' members and employees with a number no greater than 10006. 
Order the result by employee number (emp_no), salary, and row_num1 in ascending order.
*/
SELECT 
    t.emp_no,
    t.title,
    s.salary,
    ROW_NUMBER() OVER(PARTITION BY t.emp_no ORDER BY s.salary ASC) AS row_num1,
    ROW_NUMBER() OVER(PARTITION BY t.emp_no ORDER BY s.salary DESC) AS row_num2
FROM
    titles t
        JOIN
    salaries s ON t.emp_no = s.emp_no
WHERE t.title = 'Staff' AND t.emp_no <= 10006
ORDER BY t.emp_no, s.salary, row_num1 ASC;