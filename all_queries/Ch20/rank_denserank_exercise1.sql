/*
Exercise #1:
Write a query containing a window function to obtain all salary values that employee number 10560 has ever signed a contract for.
Order and display the obtained salary values from highest to lowest.
*/
SELECT 
    emp_no, salary, ROW_NUMBER() OVER w AS rank_num
FROM
    salaries
WHERE
    emp_no = 10560
WINDOW w AS (PARTITION BY emp_no ORDER BY salary DESC);