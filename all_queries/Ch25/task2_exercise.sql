/*
Use a subquery that cross-joins the employees table (with an alias e) 
with the dept_manager, departments, and employees tables (with aliases dm, d, and ee, respectively). 
This subquery should be part of an outer query that retrieves data from the following five subquery columns: 
department name (dept_name)
gender (gender)
employee number (emp_no)
start date (from_date)
and end date (to_date).
Additionally, the outer query should include a sixth column named currently_active which displays 
the value of 1 if the employee is currently working in the company, and 0 if they are not. 
For this task, assume 'currently active' means an employee whose contract end date is in 2024 or later.
Sort the results by employee number in descending order.
*/
USE employees;
SELECT 
    a.dept_name,
    a.gender,
    a.emp_no,
    a.from_date,
    a.to_date,
    CASE
        WHEN a.to_date >= '2024-01-01' THEN 1
        ELSE 0
    END AS currently_active
FROM
    (SELECT 
        d.dept_name, e.gender, e.emp_no, dm.from_date, dm.to_date
    FROM
        employees e
    CROSS JOIN dept_manager dm
    JOIN departments d ON dm.dept_no = d.dept_no
    JOIN employees ee ON dm.emp_no = ee.emp_no) a
ORDER BY a.emp_no DESC;