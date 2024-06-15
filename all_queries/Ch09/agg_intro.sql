SELECT
    COUNT(*)
FROM
    employees
WHERE
    last_name IS NULL;

    
SELECT
    COUNT(DISTINCT first_name)
FROM
    employees;
    
    
SELECT 
    COUNT(*) as salaries_more_then_1lakh
FROM
    salaries
WHERE
    salary >= 100000;
    

SELECT 
    COUNT(*)
FROM
    dept_manager;