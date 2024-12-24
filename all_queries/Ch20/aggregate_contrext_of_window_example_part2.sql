SELECT * FROM dept_emp LIMIT 1000;
SELECT * FROM dept_emp WHERE emp_no = 10010 ORDER BY from_date;
SELECT * FROM dept_emp WHERE emp_no = 10018 ORDER BY from_date;
SELECT * FROM salaries WHERE emp_no = 10010 ORDER BY from_date;
SELECT * FROM salaries WHERE emp_no = 10018 ORDER BY from_date;

SELECT 
    de.emp_no, de.dept_no, de.from_date, de.to_date
FROM
    dept_emp de
        JOIN
    (SELECT 
        emp_no, MAX(from_date) AS from_date
    FROM
        dept_emp
    GROUP BY emp_no) de1 ON de.emp_no = de1.emp_no
WHERE
    de.to_date > SYSDATE()
        AND de.from_date = de1.from_date;
        
        
        
#final query
SELECT   de2.emp_no,
		 d.dept_no,
         d.dept_name,
         s2.salary,
         avg(s2.salary) OVER w AS average_salary_per_department
FROM     (
                SELECT de.emp_no,
                       de.dept_no,
                       de.from_date,
                       de.to_date
                FROM   dept_emp de
                JOIN
                       (
                                SELECT   emp_no,
                                         max(from_date) AS from_date
                                FROM     dept_emp
                                GROUP BY emp_no) de1
                ON     de.emp_no = de1.emp_no
                WHERE  de.to_date > sysdate()
                AND    de.from_date = de1.from_date) de2
JOIN
         (
                SELECT s.emp_no,
                       s.salary,
                       s.from_date,
                       s.to_date
                FROM   salaries s
                JOIN
                       (
                                SELECT   emp_no,
                                         max(from_date) AS from_date
                                FROM     salaries
                                GROUP BY emp_no) s1
                ON     s.emp_no = s1.emp_no
                WHERE  s.to_date > sysdate()
                AND    s.from_date = s1.from_date) s2
ON       s2.emp_no = de2.emp_no
JOIN     departments d
ON       d.dept_no = de2.dept_no
GROUP BY de2.emp_no,
         d.dept_name WINDOW w AS (PARTITION BY de2.dept_no)
ORDER BY de2.emp_no;