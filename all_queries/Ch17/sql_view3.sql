DROP VIEW IF EXISTS v_employee_avg_salary;        
CREATE OR REPLACE VIEW v_employee_avg_salary AS
    SELECT 
        ROUND(AVG(s.salary), 2) AS avg_salary
    FROM
        employees e
            JOIN
        salaries s ON e.emp_no = s.emp_no
    WHERE
        e.emp_no IN (10002 , 10005, 10007)
            AND s.from_date BETWEEN '1991-01-01' AND '1996-12-31';