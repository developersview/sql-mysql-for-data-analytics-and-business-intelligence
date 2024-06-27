SELECT * from dept_manager;

/* select the first and last name from the employees table for the same 
 employee numbers that can be found in dept_manager table */
 
 SELECT 
    e.first_name, e.last_name
FROM
    employees e
WHERE
    e.emp_no IN (SELECT 
            dm.emp_no
        FROM
            dept_manager dm);
