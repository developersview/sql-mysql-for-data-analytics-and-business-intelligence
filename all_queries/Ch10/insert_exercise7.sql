/*
Consider that the following query has been used to set up the departments table in the employees_10 database:
CREATE TABLE departments (
    dept_no     CHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no),
    UNIQUE  KEY (dept_name)
);
Here's an excerpt of the current state of the table:
Write a new query to insert the following entry into the departments table:
Department number 10, named 'Business Analysis'.
To verify the insertion has been successful, retrieve the entire data from the departments table.
*/
USE employees;
INSERT INTO departments(dept_no, dept_name)
VALUES('d010', 'Business Analysis');

SELECT 
    *
FROM
    departments;
