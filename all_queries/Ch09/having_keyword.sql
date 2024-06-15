SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY (first_name)
HAVING COUNT(first_name) > 250
ORDER BY first_name;


SELECT 
    count(emp_no), ROUND(AVG(salary),2) as emps_with_same_salary
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY count(emp_no);

SELECT 
    emp_no, ROUND(AVG(salary),2) as emps_with_same_salary
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;