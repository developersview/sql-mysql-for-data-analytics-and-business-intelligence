/*
Retrieve the employee number, date of birth, and first and last names for all individuals from the employees table. 
Use a function to ensure that "Not provided" is displayed in place of the first name if a null value 
is encountered for a given record.
*/
SELECT 
    emp_no,
    birth_date,
    COALESCE(first_name, 'Not provided') AS first_name,
    last_name
FROM
    employees;