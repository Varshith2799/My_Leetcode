# Write your MySQL query statement below
SELECT name FROM Employee WHERE id IN (SELECT managerId FROM Employee Group BY managerId HAVING count(*) >= 5) ;