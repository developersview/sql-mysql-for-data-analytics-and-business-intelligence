SELECT 
    first_name
FROM
    employees
GROUP BY (first_name);


SELECT 
    first_name, COUNT(first_name) AS count_of_first_name
FROM
    employees
GROUP BY (first_name)
ORDER BY COUNT(first_name) DESC;

SELECT 
    salary, COUNT(emp_no) AS emps_with_same_salary
FROM
    salaries
WHERE
    salary > 80000
GROUP BY (salary)
ORDER BY salary ASC;