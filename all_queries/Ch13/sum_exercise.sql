/*
What is the total amount of all contract salary values for contracts starting before January 1, 1995?
*/
SELECT 
    SUM(salary)
FROM
    salaries
WHERE
    from_date < '1995-01-01';