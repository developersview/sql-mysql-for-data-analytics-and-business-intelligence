/*
Exercise #1:
Store the highest contract salary values of all male employees in a temporary table called male_max_salaries.
*/
DROP TABLE IF EXISTS male_max_salaries;
CREATE TEMPORARY TABLE male_max_salaries
SELECT 
    s.emp_no, MAX(s.salary) AS male_max_salaries
FROM
    salaries s
        JOIN
    employees e ON e.emp_no = s.emp_no AND e.gender = 'M'
GROUP BY s.emp_no;

SELECT * FROM male_max_salaries;