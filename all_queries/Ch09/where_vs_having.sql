SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name ASC;


SELECT 
    emp_no, COUNT(dept_no) AS contracts_of_emps
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY (emp_no)
HAVING COUNT(from_date) > 1
ORDER BY emp_no;