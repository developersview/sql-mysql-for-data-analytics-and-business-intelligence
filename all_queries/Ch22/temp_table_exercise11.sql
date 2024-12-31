/*
Copy and paste the SELECT statement creating the salaries_adjusted_for_inflation temporary table
 in the WITH clause of a common table expression whose top-level SELECT statement joins 
the common table expression data with the data from the salaries_adjusted_for_inflation table on the employee number (emp_no).
*/
WITH cte AS(
SELECT 
    emp_no,
    salary,
    CASE
        WHEN from_date BETWEEN '1970-01-01' AND '1989-12-31' THEN ROUND(salary * 6.5, 2)
        WHEN from_date BETWEEN '1990-01-01' AND '1999-12-31' THEN ROUND(salary * 2.8, 2)
        ELSE ROUND(salary * 3, 2)
    END AS inflation_adjusted_salary,
    from_date,
    to_date
FROM
    salaries)
SELECT 
    *
FROM
    salaries_adjusted_for_inflation ias
        JOIN
    cte c ON ias.emp_no = c.emp_no; 