# Write your MySQL query statement below
SELECT  query_name , ROUND(AVG(rating/position),2) AS quality , ROUND((SUM(CASE WHEN rating<3 then 1 else 0 end)/Count(*))*100,2) AS poor_query_percentage
FROM Queries 
WHERE query_name is not null
GROUP BY query_name;