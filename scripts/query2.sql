-- The top grades for each student

-- Las mejores notas de cada alumno

USE project_university;

SELECT
s.students_id AS ID,
s.students_name AS Student,
MAX(g.grades_total) AS MaxGrade
FROM students s
JOIN grades g
ON s.students_id = g.grades_students_id
GROUP BY Student, ID
ORDER BY MaxGrade DESC;