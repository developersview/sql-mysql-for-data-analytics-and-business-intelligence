SELECT 
    *
FROM
    department_dup
ORDER BY dept_no DESC;
    
DELETE FROM department_dup 
WHERE
    dept_no = 'd011';

COMMIT;

ALTER TABLE department_dup
CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;

INSERT INTO department_dup (dept_no)
VALUES ('d011'), ('d012');

ALTER TABLE department_dup
ADD COLUMN dept_manager VARCHAR(255) NULL AFTER dept_name;

COMMIT;