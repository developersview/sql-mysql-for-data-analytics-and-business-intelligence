SELECT SYSDATE();

SELECT 
    emp_no, salary, from_date, to_date
FROM
    salaries
WHERE
    to_date > SYSDATE();
    
    
#error code 1055
SELECT 
    emp_no, salary, MAX(from_date), to_date
FROM
    salaries
WHERE
    to_date > SYSDATE()
GROUP BY emp_no;    



SELECT 
    s.emp_no, s.salary, s.from_date, s.to_date
FROM
    salaries s
        JOIN
    (SELECT 
        emp_no, MAX(from_date) AS from_date
    FROM
        salaries
    GROUP BY emp_no) s1 ON s.emp_no = s1.emp_no
WHERE
    s.to_date > SYSDATE()
        AND s.from_date = s1.from_date;