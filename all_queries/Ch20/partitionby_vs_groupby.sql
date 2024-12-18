SELECT a.emp_no,
MAX(salary) AS max_salary FROM (
	SELECT 
		emp_no, salary, ROW_NUMBER() OVER w AS row_num
	FROM 
		salaries
	WINDOW w AS (PARTITION BY emp_no ORDER BY salary DESC)) a
GROUP BY emp_no;


SELECT a.emp_no,
	a.salary AS max_salary FROM (
	SELECT 
		emp_no, salary, ROW_NUMBER() OVER w AS row_num
	FROM 
		salaries
	WINDOW w AS (PARTITION BY emp_no ORDER BY salary DESC)) a
WHERE a.row_num = 1;



SELECT 
	emp_no, 
	salary, 
	ROW_NUMBER() OVER w AS row_num
FROM 
	salaries
WINDOW w AS (PARTITION BY emp_no ORDER BY salary DESC);


SELECT 
    emp_no, MAX(salary)
FROM
    salaries
GROUP BY emp_no;


SELECT 
    a.emp_no, MAX(salary)
FROM
    (SELECT 
        emp_no, salary
    FROM
        salaries) a
GROUP BY emp_no;