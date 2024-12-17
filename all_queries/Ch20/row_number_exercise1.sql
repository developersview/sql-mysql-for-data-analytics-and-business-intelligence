SELECT 
    emp_no, 
    dept_no,
    ROW_NUMBER() OVER(ORDER BY emp_no DESC) AS row_num
FROM
    dept_manager;
    

SELECT 
    emp_no, first_name, last_name, gender,
    ROW_NUMBER() OVER(PARTITION BY first_name ORDER BY last_name) AS row_num
FROM
    employees;  
    

SELECT 
    emp_no, first_name, last_name,
    ROW_NUMBER() OVER(PARTITION BY last_name ORDER BY emp_no) AS row_num
FROM
    employees; 