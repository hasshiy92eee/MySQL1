CREATE DATABASE students;


USE students;


SHOW DATABASES;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    age INT,
    grade CHAR(1),
    specialstudentsnumber VARCHAR(1),
	club VARCHAR (10)
	);
INSERT INTO students (name, age, grade, specialstudentsnumber, club)
VALUES ('jonasen', 19, 'A', '1', 'football'),
       ('dio', 19, 'A', '1', 'football'),
       ('eiles', 19, 'B', '1', 'independent'),
       ('boss', 22, 'C', '3', 'wrestler'),
       ('reen', 20, 'B', '2', 'chess'),
       ('mei', 22, 'A', '2', 'art'),
       ('seren', 21, 'C', '3', 'independent');
	   
ALTER TABLE students MODIFY COLUMN club VARCHAR(20);

INSERT INTO students (name, age, grade, specialstudentsnumber, club)
VALUES ('rivai', 22, 'A', '2', 'basketball'),
       ('milia', 20, 'b', '1', 'comprehensive');
	   
ALTER TABLE students ADD COLUMN gender VARCHAR(1);

INSERT INTO students (name, age, grade, specialstudentsnumber, club, gender)
VALUES ('rivai', 22, 'A', '2', 'basketball', '男'),
       ('milia', 20, 'B', '1', 'comprehensive', '女');



INSERT INTO students (name, age, grade, specialstudentsnumber, club, gender)
VALUES ('jonasen', 19, 'A', '1', 'football', '男'),
       ('dio', 19, 'A', '1', 'football', '男'),
       ('eiles', 19, 'B', '1', 'independent', '女'),
       ('boss', 22, 'C', '3', 'wrestler', '男'),
       ('reen', 20, 'B', '2', 'chess', '男'),
       ('mei', 22, 'A', '2', 'art', '女'),
       ('seren', 21, 'C', '3', 'independent', '女');

DELETE FROM students
WHERE gender IS NULL;

INSERT INTO students (name, age, grade, specialstudentsnumber, club, gender)
VALUES('mals', 18, 'B', '2', 'soccer', '男');

INSERT INTO students (name, age, grade, specialstudentsnumber, club, gender)
VALUES ('bim', 25, 'B', '2', 'football', '男'),
       ('fox', 20, 'C', '2', 'soccer', '男');
	   
	  DELETE FROM students
WHERE name LIKE 'rivai%';

INSERT INTO students (name, age, grade, specialstudentsnumber, club, gender)
VALUES ('brian', 23, 'B', '2', 'wrestler', '男'),
       ('hory', 21, 'B', '2', 'chess', '女'),
	   ('milky', 22, 'C', '2', 'art', '女');
	   
	   INSERT INTO students (name, age, grade, specialstudentsnumber, club, gender)
	   VALUES ('enderman', 999, 'A', '1', 'comprehensive', '?');
	   
SELECT * FROM students
WHERE age BETWEEN 20 AND 30;

SELECT * FROM students
WHERE specialstudentsnumber BETWEEN '2' AND '3';

SELECT * FROM students
WHERE specialstudentsnumber = '1';

UPDATE students
SET club = 'chess'
WHERE name = 'seren';

UPDATE students
SET club = 'assassin'
WHERE name = 'dio';
	
	