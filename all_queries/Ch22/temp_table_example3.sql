DROP TABLE IF EXISTS dates;
CREATE TEMPORARY TABLE dates
SELECT 
    NOW() AS cuurent_date_and_time,
    DATE_SUB(NOW(), INTERVAL -1 DAY) AS a_day_later,
    DATE_SUB(NOW(), INTERVAL 1 MONTH) AS a_month_earlier,
    DATE_SUB(NOW(), INTERVAL -1 YEAR) AS a_year_later;
    
SELECT * FROM dates;

WITH cte AS(SELECT 
    NOW() AS cuurent_date_and_time,
    DATE_SUB(NOW(), INTERVAL -1 DAY) AS a_day_later,
    DATE_SUB(NOW(), INTERVAL 1 MONTH) AS a_month_earlier,
    DATE_SUB(NOW(), INTERVAL -1 YEAR) AS a_year_later)
SELECT * FROM dates JOIN cte c;

WITH cte AS(SELECT 
    NOW() AS cuurent_date_and_time,
    DATE_SUB(NOW(), INTERVAL -1 DAY) AS a_day_later,
    DATE_SUB(NOW(), INTERVAL 1 MONTH) AS a_month_earlier,
    DATE_SUB(NOW(), INTERVAL -1 YEAR) AS a_year_later)
SELECT * FROM dates UNION ALL SELECT * FROM cte;