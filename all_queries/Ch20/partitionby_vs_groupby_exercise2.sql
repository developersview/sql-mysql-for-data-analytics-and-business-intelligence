/*
Exercise #2:
Again, find out the lowest salary value each employee has ever signed a contract for. 
Once again, to obtain the desired output, use a subquery containing a window function. 
This time, however, introduce the window specification in the field list of the given subquery.
To obtain the desired result set, refer only to data from the “salaries” table.
*/
SELECT 
    a.emp_no, 
    MIN(salary) AS min_salary FROM (
		SELECT 
			emp_no, 
			salary,
			ROW_NUMBER() OVER(PARTITION BY emp_no ORDER BY salary ASC) AS row_num
        FROM
			salaries) a
GROUP BY a.emp_no;