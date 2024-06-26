SELECT 
    em.emp_no,
    em.first_name,
    em.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees em
WHERE
    em.first_name LIKE 'Ma%' 
UNION ALL SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    dm.dept_no,
    dm.from_date
FROM
    dept_manager dm;
    
    
-- excercise
SELECT 
    *
FROM
    (SELECT 
        em.emp_no,
            em.first_name,
            em.last_name,
            NULL AS dept_no,
            NULL AS from_date
    FROM
        employees em
    WHERE
        em.last_name = 'Denise' UNION SELECT 
        NULL AS emp_no,
            NULL AS first_name,
            NULL AS last_name,
            dm.dept_no,
            dm.from_date
    FROM
        dept_manager dm) AS a
ORDER BY -a.dept_no DESC;