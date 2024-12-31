/*
Execute the following two queries.
1. Create a temporary table called salaries_adjusted_for_inflation based on the data in the salaries table. 
It should contain the following five fields for all employees:
   1.1   Employee number (emp_no)
   1.2  Salary value (salary)
   1.3  A field named inflation_adjusted_salary containing the salary value (salary) rounded to the nearest cent, which should be:
		- Multiplied by 6.5 if the contract start date (from_date) was between January 1, 1970, and December 31, 1989, inclusive;
		- Multiplied by 2.8 if the contract start date (from_date) was between January 1, 1990, and December 31, 1999, inclusive;
		- Multiplied by 3 for the rest of the contracts.
   1.4   The contract start date (from_date)
   1.5   The contract end date (to_date).
2. Select all the data from the temporary table just created.
*/
DROP TABLE IF EXISTS salaries_adjusted_for_inflation;
CREATE TEMPORARY TABLE salaries_adjusted_for_inflation
SELECT 
    emp_no,
    salary,
    CASE
        WHEN from_date BETWEEN '1970-01-01' AND '1989-12-31' THEN ROUND(salary * 6.5, 2)
        WHEN from_date BETWEEN '1990-01-01' AND '1999-12-31' THEN ROUND(salary * 2.8, 2)
        ELSE ROUND(salary * 3, 2)
    END AS inflation_adjusted_salary,
    from_date,
    to_date
FROM
    salaries;
    
SELECT * FROM salaries_adjusted_for_inflation;
