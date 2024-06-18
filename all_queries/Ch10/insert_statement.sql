SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC
LIMIT 10;


INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (1562334, '1998-06-30','Pranoy', 'Chakraborty','M','2020-09-20');


SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC
LIMIT 10;


INSERT into employees 
values 
(
	999903,
    '1977-02-15',
    'Vikram',
    'Sarabhai',
    'M',
    '1999-01-01'
);
    
INSERT INTO titles (emp_no, title, from_date)
VALUES (999903,'Senior Engineer', '1997-10-01');


INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (999903, 'd005','1997-10-01','9999-01-01');

COMMIT;

SELECT 
    *
FROM
    dept_emp
ORDER BY emp_no DESC
LIMIT 10;

SELECT 
    *
FROM
    employees
WHERE
    emp_no IN (1562334 , 999903);