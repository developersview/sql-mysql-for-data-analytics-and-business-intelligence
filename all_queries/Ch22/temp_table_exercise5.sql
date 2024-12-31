/*
Exercise #1:
Create a temporary table called dates containing the following three columns:
- one displaying the current date and time,
- another one displaying two months earlier than the current date and time, and a
- third column displaying two years later than the current date and time.
*/
DROP TABLE IF EXISTS dates;
CREATE TEMPORARY TABLE dates
SELECT 
    NOW() AS current_date_time,
    DATE_SUB(NOW(), INTERVAL 2 MONTH) AS two_months_earlier,
    DATE_SUB(NOW(), INTERVAL -2 YEAR) AS two_years_later;
    
SELECT * FROM dates;