#1st stored procedure
USE employees;
DROP PROCEDURE IF EXISTS sp_select_employees;

DELIMITER $$
CREATE PROCEDURE sp_select_employees()
BEGIN
	SELECT * FROM employees
    ORDER BY first_name
	LIMIT 1000;
END$$

DELIMITER ;