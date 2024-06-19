SELECT 
    AVG(salary) as avg_salary
FROM
    salaries;


    
SELECT 
    AVG(salary) as avg_salary
FROM
    salaries
WHERE
    from_date > '1997-01-01';    