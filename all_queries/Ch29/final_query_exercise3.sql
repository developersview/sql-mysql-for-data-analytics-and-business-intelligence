/*
Obtain a table containing the following three fields for all individuals whose employee number is not greater than 10040:
- employee number
- the lowest department number among the departments where the employee has worked in 
(Hint: use a subquery to retrieve this value from the 'dept_emp' table)
- assign '110022' as 'manager' to all individuals whose employee number is lower than or equal to 10020, and '110039' 
to those whose number is between 10021 and 10040 inclusive.
Use a CASE statement to create the third field.
*/
USE employees;
SELECT 
    e.emp_no,
    (SELECT 
            MIN(d.dept_no)
        FROM
            dept_emp d
        WHERE
            d.emp_no = e.emp_no) AS dept_no,
    CASE
        WHEN e.emp_no <= 10020 THEN '110022'
        WHEN e.emp_no BETWEEN 10021 AND 10040 THEN '110039'
        ELSE NULL
    END AS manager
FROM
    employees e
WHERE
    e.emp_no <= 10040;