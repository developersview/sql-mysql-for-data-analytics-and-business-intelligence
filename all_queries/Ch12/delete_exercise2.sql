/*
Retrieve all records from the department-and-employees table, dept_emp, 
sorted by the department number (dept_no) in ascending order. 
Then, remove all records of employees who are working in the fifth department precisely. 
To finish off, using the same query you used at the beginning, 
obtain all records from the same table to verify that no records regarding the fifth department exist anymore.
*/
SELECT 
    *
FROM
    dept_emp
ORDER BY dept_no;


DELETE FROM dept_emp 
WHERE
    dept_no = 'd005';


SELECT 
    *
FROM
    dept_emp
ORDER BY dept_no;