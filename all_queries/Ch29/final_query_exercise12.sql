/*
Assign 10006 (as an integer value) as manager to all employees with a number between 10001 and 10005, inclusive. 
Assign 10007 to all others. Apply only to employees with a number not higher than 10008.

To obtain the desired result, organize your output into three columns:

1. The first column (emp_no) containing the employee number.
2. The second column (dept_no) containing the lowest department number they have ever signed a contract for, 
as recorded in the (dept_emp) table.
3. The last column (manager_no) containing the number of the manager assigned to the given employee.
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
        WHEN e.emp_no BETWEEN 10001 AND 10005 THEN 10006
        ELSE 10007
    END AS manager_no
FROM
    employees e
WHERE
    e.emp_no <= 10008;