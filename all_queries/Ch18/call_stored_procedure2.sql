set @p_avg_salary = 0;
call employees.sp_emp_avg_salary_out(10002, @p_avg_salary);
SELECT @p_avg_salary;
