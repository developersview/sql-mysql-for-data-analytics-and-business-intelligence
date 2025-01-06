/*
Consider that the following query has been used to set up the titles table in the employees_10 database:
CREATE TABLE titles (
    emp_no      INT             NOT NULL,
    title       VARCHAR(50)     NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE,
    PRIMARY KEY (emp_no,title, from_date)
); 
Write a new query to insert the following data about a new entry in the titles table:
Employee number 999907, who has held the position of assistant engineer according to a contract signed on the November 15, 1998.
To verify the insertion has been successful, retrieve the entire data from the titles table, sorted in descending order according to the data in the emp_no field.
*/
USE employees;
INSERT INTO titles(emp_no, title, from_date)
VALUES (999907, 'Assistant Engineer', '1998-11-15');

SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC;