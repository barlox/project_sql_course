-- The average grade that is given by each professor

-- La nota media que da cada profesor

USE project_university;

SELECT
p.professors_id AS ID,
p.professors_name AS ProfessorName, 
AVG(g.grades_total) AS AverageGrade
FROM professors p
JOIN grades g
ON g.grades_courses_id = p.professors_id
GROUP BY ProfessorName, ID
ORDER BY ID;