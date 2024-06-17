SELECT 
    *
FROM
    departments
ORDER BY dept_no DESC;


UPDATE departments
SET 
	dept_name = 'Data Analysis'
WHERE 
	dept_no = 'd010';


SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999903;
    

UPDATE employees 
SET 
    first_name = 'Stella',
    last_name = 'Parker',
    birth_date = '1985-06-11',
    gender = 'F'
WHERE
    emp_no = 999903;