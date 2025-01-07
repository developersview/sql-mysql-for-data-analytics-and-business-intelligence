/*
Retrieve a list of all employees that have been hired in 2000.
*/
USE employees;
SELECT 
    *
FROM
    employees
WHERE
    YEAR(hire_date) = 2000;