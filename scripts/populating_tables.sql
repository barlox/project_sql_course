-- Create a script that populates all of the database tables with sample data

-- Crear un script que complete todas las tablas de la base de datos con datos de muestra


USE project_university;

DELIMITER $$
CREATE PROCEDURE professor()
BEGIN

SET @Flag = 1;

myLoop: WHILE @Flag < 5 DO
  
  INSERT INTO professors(professors_name, professors_email, professors_street, professors_postal_code)
  VALUES(
    CONCAT('Professor', CAST(@Flag AS CHAR)),
    CONCAT('professor', CAST(@Flag AS CHAR), '@test.com'),
    CONCAT('StreetProfessor', CAST(@Flag AS CHAR)),
    CAST(FLOOR(RAND()*1000+5000) AS CHAR)
  );

  SET @Flag = @Flag + 1;
      
END WHILE myLoop;
END$$  
DELIMITER ;

CALL professor();

DROP PROCEDURE professor;


DELIMITER $$
CREATE PROCEDURE course()
BEGIN

SET @Flag = 1;
SET @Fleg = 1;
SET @Flog = 10;

myLoop: WHILE @Flag < 7 DO

  INSERT INTO courses(courses_name, courses_room, courses_professors_id)
  VALUES(
    CONCAT('Course', CAST(@Flag AS CHAR)),
    CONCAT('Classroom', CAST(@Flog AS CHAR)),      
    @Fleg
  );
  
  SET @Flag = @Flag + 1;
  SET @Fleg = IF(@Fleg = 4, 1, @Fleg + 1);
  SET @Flog = @Flog + 10;

END WHILE myLoop;
END$$  
DELIMITER ;

CALL course();

DROP PROCEDURE course;


DELIMITER $$
CREATE PROCEDURE student()
BEGIN

  SET @Flag = 1;

  myLoop: WHILE @Flag < 34 DO
    INSERT INTO students(students_name, students_email, students_street, students_postal_code)
    VALUES(
      CONCAT('Student', CAST(@Flag AS CHAR)),
      CONCAT('student', CAST(@Flag AS CHAR), '@test.com'),
      CONCAT('StreetStudent', CAST(@Flag AS CHAR)),
      CAST(FLOOR(RAND()*1000+5000) AS CHAR)
    );            
    
  SET @Flag = @Flag + 1;
    
  END WHILE myLoop;
  END$$  
DELIMITER ; 

CALL student();

DROP PROCEDURE student;



DELIMITER $$
CREATE PROCEDURE grade()
BEGIN

  SET @Flag = 1;

  myLoop: WHILE @Flag < 34 DO
    IF (RAND() > 0.5)
    THEN
    INSERT INTO grades(grades_name, grades_total, grades_courses_id, grades_students_id)
    VALUES( 
      'Course1',
      FLOOR(RAND() * 8 + 3),
      1,
      @Flag);
    END IF;
    
    IF (RAND() > 0.5)
    THEN
    INSERT INTO grades(grades_name, grades_total, grades_courses_id, grades_students_id)
    VALUES(
      'Course2',
      FLOOR(RAND() * 8 + 3),
      2,
      @Flag);
    END IF;
    
    IF (RAND() > 0.5)
    THEN
    INSERT INTO grades(grades_name, grades_total, grades_courses_id, grades_students_id)
    VALUES(
      'Course3',
      FLOOR(RAND() * 8 + 3),
      3,
      @Flag);
    END IF;
      
	  IF (RAND() > 0.5)
    THEN
    INSERT INTO grades(grades_name, grades_total, grades_courses_id, grades_students_id)
    VALUES(
      'Course4',
      FLOOR(RAND() * 8 + 3),
      4,
      @Flag);
    END IF;
	
    IF (RAND() > 0.5)
    THEN
    INSERT INTO grades(grades_name, grades_total, grades_courses_id, grades_students_id)
    VALUES(
      'Course5',
      FLOOR(RAND() * 8 + 3),
      5,
      @Flag);
    END IF;
      
    IF (RAND() > 0.5)
    THEN
    INSERT INTO grades(grades_name, grades_total, grades_courses_id, grades_students_id)
    VALUES(
      'Course6',
      FLOOR(RAND() * 8 + 3),
      6,
      @Flag); 
      END IF;

    SET @Flag = @Flag + 1;

  END WHILE myLoop;
  END$$  
DELIMITER ;

CALL grade();

DROP PROCEDURE grade;