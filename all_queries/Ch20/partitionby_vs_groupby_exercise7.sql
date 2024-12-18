/*
Retrieve the employee number (emp_no) and the highest contract salary value (salary, using the alias max_salary) for all managers.
To obtain the desired output, modify the following query, which finds the department managers' lowest salaries.
*/
SELECT a.emp_no, 
	   MAX(a.salary) as max_salary FROM (
		SELECT 
			dm.emp_no, 
			s.salary, 
			ROW_NUMBER() OVER w AS row_num
		FROM
			dept_manager dm
        JOIN
			salaries s ON dm.emp_no = s.emp_no
		WINDOW w AS (PARTITION BY s.emp_no ORDER BY s.salary ASC)) a
GROUP BY a.emp_no;
        