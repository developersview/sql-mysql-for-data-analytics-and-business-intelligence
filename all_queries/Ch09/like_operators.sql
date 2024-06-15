SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar%');


SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%ar');
    

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar_s');

    
SELECT 
    *
FROM
    employees
WHERE
    hire_date NOT LIKE ('1991%');
    
    
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mark%');
    
SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('2000%');

SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_');