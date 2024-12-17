#Exercise 1
SELECT 
    dm.emp_no, 
    s.salary,
    ROW_NUMBER() OVER() AS row_num1,
    ROW_NUMBER() OVER(PARTITION BY dm.emp_no ORDER BY s.salary ASC) AS row_num2
FROM
    dept_manager dm
        JOIN
    salaries s ON dm.emp_no = s.emp_no
ORDER BY row_num1, dm.emp_no , s.salary ASC; 

#Exercise 2
SELECT 
    dm.emp_no, 
    s.salary,
    ROW_NUMBER() OVER(PARTITION BY dm.emp_no ORDER BY s.salary ASC) AS row_num1,
    ROW_NUMBER() OVER(PARTITION BY dm.emp_no ORDER BY s.salary DESC) AS row_num2
FROM
    dept_manager dm
        JOIN
    salaries s ON dm.emp_no = s.emp_no;