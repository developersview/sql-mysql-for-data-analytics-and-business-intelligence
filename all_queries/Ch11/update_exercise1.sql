/*
Update the record of employee number 10003 from the employees table. 
To do this, first retrieve all rows from this table to explore its current data. 
Then, update the record with the following information for the new individual: 
Juan Speed, male, born on the 5th of June, 1979.
To conclude, retrieve the information currently stored for employee 10003. 
*/
USE employees;
SELECT 
    *
FROM
    employees
WHERE
    emp_no = 10003;
    

UPDATE employees 
SET 
    birth_date = '1979-06-05',
    first_name = 'Juan',
    last_name = 'Speed',
    gender = 'M'
WHERE
    emp_no = 10003;

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 10003;