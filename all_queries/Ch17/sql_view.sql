CREATE OR REPLACE VIEW v_dept_emp_latest_date AS
    SELECT 
        emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
    FROM
        dept_emp group by emp_no;
        
CREATE OR REPLACE VIEW staff_engineer_view AS
SELECT 
    t.emp_no,
    t.title,
    (SELECT 
            ROUND(AVG(s.salary), 2)
        FROM
            salaries s
        WHERE
            s.emp_no = t.emp_no) AS avg_salary
FROM
    (SELECT 
        emp_no, title
    FROM
        titles t
    WHERE
        title = 'Staff' OR title = 'Engineer') AS t
ORDER BY avg_salary DESC;        