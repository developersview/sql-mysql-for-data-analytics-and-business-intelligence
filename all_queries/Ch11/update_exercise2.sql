/*
Update the name of the fourth department In the departments table to 'Data Analysis'.
To do this, execute three queries. 
First retrieve the information about this row from the departments table to see its current name. 
Then, update the given department's name to 'Data Analysis'. 
Finally, retrieve the information about the fourth department once again 
(by using the query you already used at the beginning of the exercise).
*/
USE employees;
SELECT 
    *
FROM
    departments
WHERE
    dept_no = 'd004';
    

UPDATE departments
SET 
    dept_name = 'Data Analysis'
WHERE
    dept_no = 'd004';

SELECT 
    *
FROM
    departments
WHERE
    dept_no = 'd004';