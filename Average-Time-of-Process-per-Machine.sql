# Write your MySQL query statement below
SELECT T1.machine_id , 
round(
    (SELECT AVG(T2.timestamp) FROM Activity T2 WHERE T2.activity_type = 'end'   AND T2.machine_id = T1.machine_id) - 
    (SELECT AVG(T2.timestamp) FROM Activity T2 WHERE T2.activity_type = 'start' AND T2.machine_id = T1.machine_id), 3) AS processing_time 
FROM Activity T1
GROUP BY T1.machine_id;