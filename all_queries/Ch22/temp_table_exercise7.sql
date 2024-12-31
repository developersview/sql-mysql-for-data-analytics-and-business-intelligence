/*
Exercise #3:
Create a query joining the result sets from the dates temporary table you created during the previous 
lecture with a new Common Table Expression (CTE) containing the same columns. 
Let all columns in the result set appear on the same row.
*/
WITH cte AS(SELECT 
    NOW() AS cte_current_date_time,
    DATE_SUB(NOW(), INTERVAL 2 MONTH) AS cte_two_months_earlier,
    DATE_SUB(NOW(), INTERVAL -2 YEAR) AS cte_two_years_later)
SELECT * FROM dates JOIN cte c;