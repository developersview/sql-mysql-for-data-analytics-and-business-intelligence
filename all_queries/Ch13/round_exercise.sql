/*
What is the average contract salary value for contracts starting on or before November 29, 1994 or earlier? 
Round your answer to the nearest dollar, with no cents, and name the resulting column average_salary.
*/
SELECT 
    ROUND(AVG(salary), 0) AS average_salary
FROM
    salaries
WHERE
    from_date <= '1994-11-29';