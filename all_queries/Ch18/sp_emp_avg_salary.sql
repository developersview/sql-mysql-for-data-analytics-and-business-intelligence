#stored procedure for avg salary
USE employees;
DROP PROCEDURE IF EXISTS sp_emp_avg_salary;

DELIMITER $$
CREATE PROCEDURE sp_emp_avg_salary(IN p_emp_no INTEGER)
BEGIN
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
	AVG(s.salary) AS avg_salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.emp_no = p_emp_no
GROUP BY emp_no;
END$$

DELIMITER $$