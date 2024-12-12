SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    CASE
        WHEN MAX(de.to_date) >= '2025-01-01' THEN 'Currently working'
        ELSE 'No longer with the company'
    END AS current_status
FROM
    employees e
        JOIN
    dept_emp de ON de.emp_no = e.emp_no
GROUP BY e.emp_no , e.first_name , e.last_name;
