/*
Create a trigger that checks if the hire date of an employee is higher than the current date. 
If true, set the hire date to equal the current date. Format the output appropriately (YY-mm-dd).
Extra challenge: You can try to declare a new variable called 'today' which stores today's data, and then use it in your trigger!
After creating the trigger, execute the following code to see if it's working properly.
*/
USE employees;
DROP TRIGGER IF EXISTS trig_hire_date;

DELIMITER $$
CREATE TRIGGER trig_hire_date
BEFORE INSERT ON employees

FOR EACH ROW
BEGIN 
    DECLARE today date;
SELECT DATE_FORMAT(SYSDATE(), '%Y-%m-%d') INTO today;
 
	IF NEW.hire_date > today THEN
		SET NEW.hire_date = today;
	END IF;
END $$
 
DELIMITER ;
