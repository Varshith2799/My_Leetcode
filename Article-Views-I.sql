# Write your MySQL query statement below
SELECT DISTINCT viewer_id as id FROM Views 
Where author_id = viewer_id 
ORDER BY id ASC;