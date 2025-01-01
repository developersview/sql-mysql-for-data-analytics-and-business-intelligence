/*
Retrieve the employee number, date of birth, and first name 
for all individuals from the employees table. Use a function to ensure that
their last name is displayed in place of the first name if a null value is encountered in the first name for a given record.
*/
SELECT 
    emp_no, birth_date, COALESCE(first_name, last_name) AS name
FROM
    employees;