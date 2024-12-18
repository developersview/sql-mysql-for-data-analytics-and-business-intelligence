/*
Exercise #4:
Once more, find out the lowest salary value each employee has ever signed a contract for. 
To obtain the desired output, use a subquery containing a window function, 
as well as a window specification introduced with the help of the WINDOW keyword.
Moreover, obtain the output without using a GROUP BY clause in the outer query.
To obtain the desired result set, refer only to data from the “salaries” table.
*/
SELECT 
    a.emp_no, 
    a.salary AS min_salary FROM (
		SELECT 
			emp_no, 
			salary,
			ROW_NUMBER() OVER w AS row_num
        FROM
			salaries
		WINDOW w AS (PARTITION BY emp_no ORDER BY salary ASC)) a
WHERE a.row_num = 1;