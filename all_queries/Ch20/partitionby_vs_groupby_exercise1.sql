/*
Exercise #1:
Find out the lowest salary value each employee has ever signed a contract for. 
To obtain the desired output, use a subquery containing a window function, 
as well as a window specification introduced with the help of the WINDOW keyword.
Also, to obtain the desired result set, refer only to data from the “salaries” table.
*/
SELECT 
    a.emp_no, 
    MIN(salary) AS min_salary FROM (
		SELECT 
			emp_no, 
			salary,
			ROW_NUMBER() OVER w AS row_num
        FROM
			salaries
		WINDOW w AS (PARTITION BY emp_no ORDER BY salary ASC)) a
GROUP BY a.emp_no;