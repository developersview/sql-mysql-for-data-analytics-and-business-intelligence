/*
Retrieve the employee number (emp_no) and the third-highest contract salary value (salary, 
using the alias third_max_salary) for all managers.
To solve the exercise, you need to refer to the dept_manager and salaries tables.
*/
SELECT a.emp_no, 
	   a.salary as third_max_salary FROM (
		SELECT 
			dm.emp_no, 
			s.salary, 
			ROW_NUMBER() OVER w AS row_num
		FROM
			dept_manager dm
        JOIN
			salaries s ON dm.emp_no = s.emp_no
		WINDOW w AS (PARTITION BY s.emp_no ORDER BY s.salary DESC)) a
WHERE a.row_num = 3;