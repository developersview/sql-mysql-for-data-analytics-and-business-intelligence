/*
Without using window functions but using a subquery, 
retrieve the employee number (emp_no), salary value (salary), start date (from_date), 
and end date (to_date) of the latest contract of all employees according to the data stored in the salaries table.
To successfully pass the coding exercise test, do not rename column names.
*/
SELECT 
    s.emp_no, s.salary, s.from_date, s.to_date
FROM
    salaries s
        JOIN
    (SELECT 
        emp_no, MAX(from_date) AS from_date
    FROM
        salaries
    GROUP BY emp_no) s1 ON s.emp_no = s1.emp_no
WHERE
    s.from_date = s1.from_date;