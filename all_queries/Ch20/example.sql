SELECT 
    emp_no, salary,
    AVG(salary) OVER(PARTITION BY emp_no) AS avg_salary
FROM
    salaries;