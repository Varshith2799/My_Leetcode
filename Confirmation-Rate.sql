# Write your MySQL query statement below
SELECT S.user_id , 
ROUND(AVG(CASE WHEN C.action = 'confirmed' then 1 else 0 end), 2) AS confirmation_rate 
FROM Signups S 
LEFT JOIN Confirmations C ON S.user_id = C.user_id
Group By S.user_id;