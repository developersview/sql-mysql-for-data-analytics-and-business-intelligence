USE employees;

SELECT
	ROW_NUMBER() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS row_num,
    emp_no, 
    salary
FROM
    salaries;