-- Build a database with the following tables: 
-- Students, Courses, Professors, Grades
-- Foreign key relationships between the tables


CREATE DATABASE project_university;

USE project_university;

CREATE TABLE professors (
     professors_id INT NOT NULL AUTO_INCREMENT UNIQUE,
     professors_name VARCHAR(50) NOT NULL,
     professors_email VARCHAR(50) NOT NULL UNIQUE,
     professors_street VARCHAR(50) NOT NULL,
     professors_postal_code VARCHAR(5),
     PRIMARY KEY (professors_id)
);

CREATE TABLE courses (
     courses_id INT NOT NULL AUTO_INCREMENT UNIQUE,
     courses_name VARCHAR(50) NOT NULL UNIQUE,
     courses_room VARCHAR(50) NOT NULL,
     courses_professors_id INT  NOT NULL,
     FOREIGN KEY (courses_professors_id) REFERENCES professors(professors_id),       
     PRIMARY KEY (courses_id)
);

CREATE TABLE students (
     students_id INT NOT NULL AUTO_INCREMENT UNIQUE,
     students_name VARCHAR(50) NOT NULL,
     students_email VARCHAR(50) NOT NULL UNIQUE,
     students_street VARCHAR(50) NOT NULL,
     students_postal_code VARCHAR(5),   
     PRIMARY KEY (students_id)
);

CREATE TABLE grades (
     grades_id INT NOT NULL AUTO_INCREMENT UNIQUE,
     grades_name VARCHAR(50) NOT NULL,
     grades_total INT,
     grades_courses_id INT  NOT NULL, 
     grades_students_id INT  NOT NULL,    
     FOREIGN KEY (grades_courses_id) REFERENCES courses(courses_id),
     FOREIGN KEY (grades_students_id) REFERENCES students(students_id),
     PRIMARY KEY (grades_id)
);
