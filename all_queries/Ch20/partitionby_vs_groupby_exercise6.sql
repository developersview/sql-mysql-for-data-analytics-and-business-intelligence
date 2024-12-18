/*
Retrieve the employee number (emp_no) and the lowest contract salary value (salary, using the alias min_salary) for all managers. 
To obtain the desired output, you need to refer to the dept_manager and salaries tables.
PARTITION BY and GROUP BY are two clauses whose funcionality people sometimes confuse at the beginning. 
To explore the difference between these two SQL tools, try to include both in your query.
*/
SELECT a.emp_no, 
	   MIN(a.salary) as min_salary FROM (
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