SELECT 
    *
FROM
    departments_dup2
ORDER BY dept_no ASC;

DROP TABLE IF EXISTS departments_dup2;
CREATE TABLE departments_dup2 (
    dept_no CHAR(4) NULL,
    dept_name VARCHAR(255) NULL
);

INSERT INTO departments_dup2 
(
	dept_no, 
	dept_name
) SELECT 
    *
FROM
    departments;