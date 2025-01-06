/*
Use UNION to combine data from two subsets in the employees_10 database. 
The first subset should contain the employee number (emp_no), first name (first_name), and last name (last_name)
 of all employees whose family name is 'Bamford'. The second subset should contain the department number (dept_no) 
 and start date (from_date) of all managers, as recorded in the departments manager table (dept_manager). 
Ensure to provide null values in all empty columns for each subset.
*/
SELECT 
    emp_no,
    first_name,
    last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees
WHERE
    last_name = 'Bamford' 
UNION SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    dept_no,
    from_date
FROM
    dept_manager;