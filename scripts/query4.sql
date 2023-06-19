-- Create a summary report of courses and their average grades,
-- sorted by the most challenging course
-- (course with the lowest average grade) to the easiest course

-- Crear un informe resumido de los cursos y sus calificaciones promedio
-- ordenados por el curso más desafiante
-- (curso con la calificación promedio más baja) hasta el curso más fácil

USE project_university;

SELECT
c.courses_name AS Course,
AVG(g.grades_total) AS AverageGrades,
CASE
WHEN AVG(g.grades_total) <= 4 THEN 'Very difficult'
WHEN AVG(g.grades_total) > 4 AND AVG(g.grades_total) < 6 THEN 'Difficult'
WHEN AVG(g.grades_total) >= 6 AND AVG(g.grades_total) < 8 THEN 'Easy'
ELSE 'Very easy'
END AS Dificulty
FROM courses c
JOIN grades g
ON c.courses_id = g.grades_id
GROUP BY c.courses_name
ORDER BY AverageGrades;