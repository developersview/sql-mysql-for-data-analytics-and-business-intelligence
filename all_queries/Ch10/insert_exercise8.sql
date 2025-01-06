/*
Consider that the following query has been used to set up the dept_emp table, which stores data about departments and employees, in the employees_10 database:

CREATE TABLE dept_emp (
    emp_no      INT             NOT NULL,
    dept_no     CHAR(4)         NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    PRIMARY KEY (emp_no,dept_no)
);
The same table structure has been used to create a duplicate table named dept_emp_dup. Your task is to fill it with the exact same data currently stored in the dept_emp table. To achieve and verify the successful execution of the task, you need to run three additional queries.
With the first query, insert the entire data from dept_emp into dept_emp_dup. With the second and third queries, select the entire data from dept_emp and dept_emp_dup, respectively, and observe that the data stored in the two tables is identical.
*/
USE employees;

CREATE TABLE dept_emp_dup (
    emp_no      INT             NOT NULL,
    dept_no     CHAR(4)         NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    PRIMARY KEY (emp_no,dept_no)
);

INSERT INTO dept_emp_dup (emp_no, dept_no, from_date, to_date)
SELECT 
    emp_no, dept_no, from_date, to_date
FROM
    dept_emp;
    
SELECT * FROM dept_emp;
SELECT * FROM dept_emp_dup;


