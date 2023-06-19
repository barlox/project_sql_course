-- Finding which student and professor have the most courses in common

-- Encontrar qué estudiante y profesor tienen más cursos en común

USE project_university;

SELECT
s.students_name AS Student,
p.professors_name AS Professor,
COUNT(*) AS CommonCourses
FROM students s
JOIN grades g
ON g.grades_students_id = s.students_id
JOIN courses c
ON c.courses_id = g.grades_courses_id
JOIN professors p
ON p.professors_id = c.courses_professors_id
GROUP BY s.students_name, p.professors_name
ORDER BY CommonCourses DESC
LIMIT 1;