SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

SELECT  
    COUNT(*)
FROM
    salaries;
    
SELECT 
    COUNT(DISTINCT(from_date))
FROM
    salaries;
    
SELECT 
    COUNT(*)
FROM
    departments;
    
SELECT 
    COUNT(DISTINCT (dept_no))
FROM
    dept_emp;