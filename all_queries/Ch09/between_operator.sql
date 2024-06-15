SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN ('1995-01-01' AND '2020-01-10') AND gender = 'F';
    
SELECT 
    *
FROM
    employees
WHERE
    hire_date NOT BETWEEN '1995-01-01' AND '2020-01-10'
ORDER BY hire_date DESC;


SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN 66000 AND 70000;


SELECT 
    *
FROM
    employees
WHERE
    emp_no NOT BETWEEN '10004' AND '10012';


SELECT 
    *
FROM
    departments
WHERE
    dept_no BETWEEN 'd003' AND 'd006';