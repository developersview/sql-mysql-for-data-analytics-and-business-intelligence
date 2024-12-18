/*
Exercise #3:
Once again, find out the lowest salary value each employee has ever signed a contract for. 
This time, to obtain the desired output, avoid using a window function. Just use an aggregate function and a subquery.
To obtain the desired result set, refer only to data from the “salaries” table.
*/
SELECT 
    a.emp_no, MIN(salary) AS min_salary
FROM
    (SELECT 
        emp_no, salary
    FROM
        salaries) a
GROUP BY a.emp_no;