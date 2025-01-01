/*
What is the average contract salary value for contracts starting on or before December 31, 1994 or earlier?
*/
SELECT 
    AVG(salary)
FROM
    salaries
WHERE
    from_date < '1994-12-31';