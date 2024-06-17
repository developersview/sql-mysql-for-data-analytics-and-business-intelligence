INSERT INTO department_dup 
(
	dept_no, 
	dept_name
)
SELECT 
    *
FROM
    departments;


SELECT 
    *
FROM
    department_dup
ORDER BY dept_no;

COMMIT;

UPDATE department_dup
SET
	dept_no = 'd011',
    dept_name = 'Quality Control';
        
ROLLBACK;