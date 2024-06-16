SELECT 
    *
FROM
    departments;
    
CREATE TABLE department_dup (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

SELECT 
    *
FROM
    department_dup
ORDER BY dept_no ASC;
    

INSERT INTO department_dup 
(
	dept_no, 
    dept_name
) 
SELECT 
    *
FROM
    departments;
    

INSERT INTO departments (dept_no, dept_name)
VALUE
(
	'd010',
    'Business Analysis'
);