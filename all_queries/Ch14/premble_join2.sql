DROP TABLE IF EXISTS dept_manager_dup;
CREATE TABLE dept_manager_dup (
    emp_no INT(11) NOT NULL,
    dept_no CHAR(4) NULL,
    from_date DATE NOT NULL,
    to_date DATE NULL
);

INSERT INTO dept_manager_dup
SELECT 
    *
FROM
    dept_manager;
    

SELECT 
    *
FROM
    dept_manager_dup;  
    
    
INSERT INTO dept_manager_dup (emp_no, from_date)
VALUES (999904,'2017-01-01'),
	   (999905,'2017-01-01'),
       (999906,'2017-01-01'),
       (999907,'2017-01-01');

DELETE FROM dept_manager_dup
WHERE dept_no = 'd001';