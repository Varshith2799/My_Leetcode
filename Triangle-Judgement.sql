# Write your MySQL query statement below
SELECT x,y,z,(CASE WHEN x+y > z AND y+z > x AND z+x > y then 'Yes' else 'No' end) triangle FROM Triangle;