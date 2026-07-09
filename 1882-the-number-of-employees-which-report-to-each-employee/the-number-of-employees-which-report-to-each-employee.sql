# Write your MySQL query statement below
SELECT e.employee_id, e.name, COUNT(s.reports_to) AS reports_count, ROUND(AVG(s.age)) AS average_age
FROM Employees e
JOIN Employees s
ON e.employee_id = s. reports_to
GROUP BY e.employee_id, e.name
ORDER BY e.employee_id