SELECT *
FROM projects
WHERE duration_months = (
    SELECT MAX(duration_months)
    FROM projects
);