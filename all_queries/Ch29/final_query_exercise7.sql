/*
How many contracts have been registered in the ‘salaries’ table with duration of more than one year 
and of value higher than or equal to $100,000?
Hint: You may wish to compare the difference between the start and end date of the salaries contracts.
*/
USE employees;
SELECT 
    COUNT(*)
FROM
    salaries
WHERE
    salary >= 100000
        AND DATEDIFF(to_date, from_date) > 365;