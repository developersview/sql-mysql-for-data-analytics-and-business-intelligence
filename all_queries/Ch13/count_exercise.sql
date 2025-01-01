/*
How many job titles are there in the employees_10 database? Use the titles table to answer the question.
*/
SELECT 
    COUNT(DISTINCT title)
FROM
    titles;