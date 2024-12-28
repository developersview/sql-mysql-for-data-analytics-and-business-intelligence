/*
Retrieve all the information stored in the male_min_salaries temporary table 
about employees whose employee numbers are less than 10007, .
*/
SELECT 
    *
FROM
    male_min_salaries
WHERE
    emp_no <= 10007;