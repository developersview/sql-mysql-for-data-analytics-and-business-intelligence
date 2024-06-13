SELECT 
    *
FROM
    employees
WHERE
    first_name = 'denis';
 
 
SELECT 
    gender AS Gender, COUNT(*) AS Count
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
    first_name AS First_Name, COUNT(*) AS Count_as_per_first_name
FROM
    employees
-- WHERE first_name = 'Elvis'
GROUP BY (first_name)
ORDER BY first_name ASC;    