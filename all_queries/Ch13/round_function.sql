SELECT 
    ROUND(AVG(salary), 2) as avg_salary
FROM
    salaries;
    

SELECT 
    ROUND(AVG(salary), 2) as avg_salary
FROM
    salaries
WHERE
    from_date > '1997-01-01'; 