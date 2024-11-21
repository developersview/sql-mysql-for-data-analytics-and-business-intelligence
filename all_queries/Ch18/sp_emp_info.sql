USE employees;
DROP PROCEDURE if exists sp_emp_info;

DELIMITER $$
CREATE PROCEDURE sp_emp_info(in p_emp_first_name VARCHAR(255), in p_emp_last_name VARCHAR(255), out p_emp_no INTEGER)
BEGIN
SELECT 
    e.emp_no
INTO p_emp_no FROM
    employees e
WHERE
    e.first_name = p_emp_first_name
        AND e.last_name = p_emp_last_name;
END$$
DELIMITER $$ ;
