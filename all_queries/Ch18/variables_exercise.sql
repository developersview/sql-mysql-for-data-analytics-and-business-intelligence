SET @v_emp_no = 0;
CALL employees.sp_emp_info('Aruna', 'Journel', @v_emp_no);
SELECT @v_emp_no;