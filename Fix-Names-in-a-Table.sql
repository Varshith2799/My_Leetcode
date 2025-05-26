# Write your MySQL query statement below
SELECT user_id , Concat(upper(Left(name,1)),lower(Right(name,length(name)-1))) AS name 
FROM Users 
ORDER BY user_id;