USE employees;
DROP procedure IF EXISTS sp_emp_avg_salary_out;

DELIMITER $$
CREATE PROCEDURE sp_emp_avg_salary_out(in p_emp_no INTEGER, out p_avg_salary DECIMAL(10,2))
BEGIN
SELECT 
	AVG(s.salary) INTO p_avg_salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.emp_no = p_emp_no
GROUP BY e.emp_no;
END$$

DELIMITER $$ ;