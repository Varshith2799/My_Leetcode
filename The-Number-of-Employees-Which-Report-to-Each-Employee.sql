# Write your MySQL query statement below
SELECT E.employee_id, E.name, COUNT(E1.employee_id) reports_count,
ROUND(AVG(E1.age)) average_age FROM Employees E INNER JOIN Employees 
E1 ON E.employee_id = E1.reports_to GROUP BY E.employee_id, E.name 
ORDER BY employee_id