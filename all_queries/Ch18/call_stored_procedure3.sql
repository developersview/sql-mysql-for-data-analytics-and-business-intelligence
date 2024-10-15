set @p_emp_no = 0;
call employees.sp_emp_info('Mary', 'Sluis', @p_emp_no);
select @p_emp_no;
