/*
Retrieve a list of all employees from the titles table who are staff members.
Organize your output into emp_no, title, from_date, and to_date columns.
*/
USE employees;
SELECT 
    e.emp_no, t.title, t.from_date, t.to_date
FROM
    employees e
        INNER JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    t.title LIKE ('%Staff%');