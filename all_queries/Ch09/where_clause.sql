SELECT 
    *
FROM
    employees
WHERE
    first_name = 'denis';
 
 
SELECT 
    gender AS Gender, COUNT(*) AS Count_of_denise
FROM
    employees
WHERE
    first_name = 'denis'
GROUP BY (gender)
ORDER BY COUNT(*) DESC;


SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Elvis';

    
SELECT 
    first_name AS First_Name,
    COUNT(*) AS Count_as_per_first_name
FROM
    employees
GROUP BY (first_name)
ORDER BY first_name ASC;


SELECT 
    gender AS Gender, COUNT(*) AS Count_of_Elvis
FROM
    employees
WHERE
    first_name = 'Elvis'
GROUP BY (Gender)
ORDER BY COUNT(*) ASC;



SELECT 
    hire_date, COUNT(*) AS Count_by_hire_date
FROM
    employees
GROUP BY (hire_date)
HAVING COUNT(*) > 10
ORDER BY hire_date DESC; 