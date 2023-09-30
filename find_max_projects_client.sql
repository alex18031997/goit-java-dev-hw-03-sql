SELECT client_id, COUNT(*) as project_count
FROM projects
GROUP BY client_id
HAVING COUNT(*) = (SELECT MAX(project_count) FROM (SELECT client_id, COUNT(*) as project_count FROM projects GROUP BY client_id) AS temp);