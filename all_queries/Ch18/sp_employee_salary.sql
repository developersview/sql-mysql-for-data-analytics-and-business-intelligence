#stored procedure with input parameter
USE employees;
DROP PROCEDURE IF EXISTS sp_emp_salary;

DELIMITER $$
CREATE PROCEDURE sp_emp_salary(IN p_emp_no INTEGER)
BEGIN
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    s.salary,
    s.from_date,
    s.to_date
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.emp_no = p_emp_no;
END$$

DELIMITER $$