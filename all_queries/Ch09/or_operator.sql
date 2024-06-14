SELECT 
    first_name, COUNT(*) AS count_of_first_name
FROM
    employees
WHERE
    first_name = 'Denis'
        OR first_name = 'Elvis'
        OR first_name = 'Kellie'
        OR first_name = 'Aruna'
GROUP BY (first_name)
ORDER BY first_name ASC;
    

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie'
        OR first_name = 'Aruna';


SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis'
        AND (gender = 'M' OR gender = 'F');
    
    
SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND (first_name = 'Kellie' OR first_name = 'Aruna');