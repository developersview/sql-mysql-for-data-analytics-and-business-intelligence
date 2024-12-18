SELECT 
    emp_no, 
    salary,
    #ROW_NUMBER() OVER() AS row_num1,
	ROW_NUMBER() OVER(PARTITION BY emp_no) AS row_num2,
	ROW_NUMBER() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS row_num3
	#ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num4
FROM
    salaries;