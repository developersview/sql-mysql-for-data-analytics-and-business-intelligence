DROP TABLE IF EXISTS f_highest_salary;
CREATE TEMPORARY TABLE f_highest_salary
SELECT 
    s.emp_no, MAX(s.salary) AS f_highest_salary
FROM
    salaries s
        JOIN
    employees e ON e.emp_no = s.emp_no AND e.gender = 'F'
GROUP BY s.emp_no;


SELECT 
    *
FROM
    f_highest_salary;
    

SELECT 
    *
FROM
    f_highest_salary
WHERE
    emp_no <= 10010;
    