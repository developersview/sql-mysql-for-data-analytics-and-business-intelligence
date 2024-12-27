SELECT 
    *
FROM
    employees
WHERE
    hire_date > '2000-01-01';
    
WITH cte_emp_hired_from_jan_2000 AS (
	SELECT *
	FROM employees
	WHERE hire_date > '2000-01-01'),
highest_contract_salary_values AS (
	SELECT s.emp_no, MAX(s.salary) AS highest_salary, e.gender
	FROM salaries s
	JOIN cte_emp_hired_from_jan_2000 e ON e.emp_no = s.emp_no
	GROUP BY s.emp_no)
SELECT 
    *
FROM
    highest_contract_salary_values;
    