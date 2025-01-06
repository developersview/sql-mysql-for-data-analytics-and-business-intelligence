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
Employee named John Miller, male, employee number 999906, born on the 14th of February 1967, hired on the 1st of June 1997.
Provide the new values without naming all columns.
Finally, select all data from the employees table to verify that the new entry has been added. 
Retrieve this data sorted in descending order according to the values in the emp_no column.
*/

USE employees;
INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (999906, '1967-02-14', 'John', 'Miller', 'M', '1997-06-01');

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;