#1st stored procedure
USE employees;
DROP PROCEDURE IF EXISTS select_employees;

DELIMITER $$
CREATE PROCEDURE select_employees()
BEGIN
	SELECT * FROM employees
    ORDER BY first_name
	LIMIT 1000;
END$$

DELIMITER ;