/*
Exercise #3:
Write a query that upon execution retrieves a result set containing all salary values 
that employee 10560 has ever signed a contract for. 
Use a window function to rank all salary values from highest to lowest in a way that equal salary values bear 
the same rank and that gaps in the obtained ranks for subsequent rows are allowed.
*/
SELECT 
    emp_no, salary, RANK() OVER w AS rank_num
FROM
    salaries
WHERE emp_no = 10560
WINDOW w AS (PARTITION BY emp_no ORDER BY salary DESC);