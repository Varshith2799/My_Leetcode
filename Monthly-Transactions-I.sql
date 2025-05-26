# Write your MySQL query statement below
SELECT DATE_FORMAT(trans_date, '%Y-%m') AS month, country , count(trans_date) AS trans_count , SUM(CASE WHEN state = 'approved' then 1 else 0 end) AS approved_count , SUM(amount) AS trans_total_amount,SUM(CASE WHEN state = 'approved' then amount else 0 end) AS approved_total_amount
FROM Transactions
GROUP BY country,YEAR(trans_date),MONTH(trans_date)