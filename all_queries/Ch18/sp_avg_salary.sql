USE employees;
DROP PROCEDURE IF EXISTS sp_avg_salary;

DELIMITER $$
CREATE PROCEDURE sp_avg_salary()
BEGIN
	SELECT AVG(salary) AS avg_salary
	FROM salaries;
END$$

DELIMITER ;