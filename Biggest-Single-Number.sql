# Write your MySQL query statement below
SELECT MAX(num) AS num FROM (SELECT MAX(num) as num FROM MyNumbers 
GROUP BY num
HAVING COUNT(*) = 1) N
