/*
Retrieve all records from the employees table for employees hired between January 1, 1988, and December 31, 1992, inclusive.
*/
USE employees;
SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1988-01-01' AND '1992-12-31';