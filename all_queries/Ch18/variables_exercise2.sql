SET @v_emp_no = 10004;

SELECT 
    emp_no, first_name, last_name, hire_date
FROM
    employees
WHERE
    emp_no = @v_emp_no;