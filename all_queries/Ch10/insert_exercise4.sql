/*
Consider that the following query has been used to set up the employees table in the employees_10 database:

CREATE TABLE employees (
    emp_no      INT             NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)      NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL, 
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (emp_no)
);
Write a new query to insert the following data about a new entry in the employees table:
Employee named Patrick Huston, male, employee number 999905, born on the 12th of March 1965, hired on the 1st of January 2000.
Provide the new values after naming all columns.
Finally, select all data from the employees table to verify that the new entry has been added.
Retrieve this data sorted in descending order according to the values in the emp_no column.
*/
USE employees;
INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (999905, '1965-03-12', 'Patrick', 'Huston', 'M', '2000-01-01');

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;