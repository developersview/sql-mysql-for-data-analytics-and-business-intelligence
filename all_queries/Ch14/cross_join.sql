SELECT 
    dm.*, dp.*
FROM
    dept_manager dm
        CROSS JOIN
    departments dp
ORDER BY dm.emp_no ASC , dp.dept_no ASC;


SELECT 
    dp.*, dm.*
FROM
    departments dp
        CROSS JOIN
    dept_manager dm
WHERE
    dp.dept_no <> dm.dept_no;