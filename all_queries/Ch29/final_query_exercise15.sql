/*
How many open-ended contracts with a value higher than $74,057 have been registered in the salaries table? 
Store your output in a column named num_open_ended_contracts.
Please note that open-ended contracts have all been assigned January 1, 9999 as a to_date.
*/
USE employees;
SELECT 
    COUNT(*) AS num_open_ended_contracts
FROM
    salaries
WHERE
    to_date = '9999-01-01'
        AND salary > 74057;