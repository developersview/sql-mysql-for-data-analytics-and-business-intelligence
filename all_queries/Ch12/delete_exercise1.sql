/*
Retrieve all records from the department-and-employees table twice. 
In between the two executions, remove all the data from that table. If you've worked correctly, you'll obtain:
- an output containing the entire data currently stored in that table
- a message stating the number of rows you've removed with the execution of the second query
- an empty result set, indicating that after the execution of the second query, the relevant table is empty.
*/
SELECT 
    *
FROM
    dept_emp;

DELETE FROM dept_emp;

SELECT 
    *
FROM
    dept_emp;