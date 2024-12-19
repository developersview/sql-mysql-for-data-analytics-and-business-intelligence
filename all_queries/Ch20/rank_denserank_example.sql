SELECT 
    emp_no, salary, ROW_NUMBER() OVER w AS row_num
FROM
    salaries
WINDOW w AS (PARTITION BY emp_no ORDER BY salary DESC);


SELECT
    emp_no, salary, ROW_NUMBER() OVER w AS row_num
FROM
    salaries
WHERE emp_no = 11839
WINDOW w AS (PARTITION BY emp_no ORDER BY salary DESC);


SELECT 
    emp_no, (COUNT(salary) - COUNT(DISTINCT salary)) AS diff
FROM
    salaries
GROUP BY emp_no
HAVING diff > 0
ORDER BY emp_no;


SELECT 
    *
FROM
    salaries
WHERE
    emp_no = 11839;
    
#RANK() 
SELECT
    emp_no, salary, RANK() OVER w AS rank_num
FROM
    salaries
WHERE emp_no = 11839
WINDOW w AS (PARTITION BY emp_no ORDER BY salary DESC);

#DENSE_RANK() 
SELECT
    emp_no, salary, DENSE_RANK() OVER w AS dense_rank_num
FROM
    salaries
WHERE emp_no = 11839
WINDOW w AS (PARTITION BY emp_no ORDER BY salary DESC);