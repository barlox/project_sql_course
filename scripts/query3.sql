-- Sort students by the courses that they are enrolled in

-- Ordenar a los estudiantes por los cursos en los que están inscritos

USE project_university;

SELECT 
c.courses_id AS ID,
c.courses_name AS Course,
s.students_name AS Student
FROM courses c
JOIN grades g
ON g.grades_courses_id = c.courses_id
JOIN students s
ON s.students_id = g.grades_students_id
ORDER BY ID;