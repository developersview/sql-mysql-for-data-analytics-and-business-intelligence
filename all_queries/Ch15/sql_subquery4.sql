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
