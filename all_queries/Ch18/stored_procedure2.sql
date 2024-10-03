USE employees;
DROP PROCEDURE IF EXISTS average_salary;

DELIMITER $$
CREATE PROCEDURE average_salary()
BEGIN
	SELECT AVG(salary)
	FROM salaries;
END$$

DELIMITER ;