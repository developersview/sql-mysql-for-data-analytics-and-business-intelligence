SET @v_avg_salary = 0;
CALL employees.sp_emp_avg_salary_out(10005, @v_avg_salary);
SELECT @v_avg_salary;