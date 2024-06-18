SELECT 
    *
FROM
    departments
ORDER BY dept_no DESC;


SELECT 
    *
FROM
    department_dup
ORDER BY dept_no DESC;

DELETE FROM departments 
WHERE
    dept_no = 'd010';
    
DELETE FROM department_dup
WHERE
    dept_no = 'd011';