INSERT INTO dept_manager_dup 
VALUES 
  (
    110228, 'd003', '1992-03-21', '9999-01-01'
  );

INSERT INTO departments_dup2
VALUES ('d009','Customer Service');

-- check 'dept_manager_dup' and 'departments_dup2'

SELECT 
    *
FROM
    dept_manager_dup
ORDER BY dept_no ASC;

SELECT 
    *
FROM
    departments_dup2
ORDER BY dept_no ASC;

-- remove the duplicates
DELETE FROM dept_manager_dup 
WHERE
    emp_no = '110228';

DELETE FROM departments_dup2 
WHERE
    dept_no = 'd009';