SELECT project_name, SUM(salary * duration_months) AS project_cost
FROM projects
JOIN project_team ON projects.project_id = project_team.project_id
JOIN employees ON project_team.employee_id = employees.employee_id
GROUP BY project_name
ORDER BY project_cost DESC;