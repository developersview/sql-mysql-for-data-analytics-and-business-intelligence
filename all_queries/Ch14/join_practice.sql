SELECT 
    dp.dept_name,
    ROUND(AVG(sl.salary), 2) AS avg_salary_per_dept
FROM
    departments dp
        INNER JOIN
    dept_manager dm ON dp.dept_no = dm.dept_no
        INNER JOIN
    salaries sl ON dm.emp_no = sl.emp_no
GROUP BY dp.dept_name
HAVING avg_salary_per_dept > 60000
ORDER BY avg_salary_per_dept DESC;

-- exercise
