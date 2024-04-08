CREATE DATABASE practice_db;

USE practice_db;

CREATE TABLE students2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    grade VARCHAR(10)
);


INSERT INTO students2 (name, age, grade) VALUES ('Alice', 20, 'A'),
                                              ('Bob', 22, 'B'),
                                              ('Charlie', 21, 'A');
											  
INSERT INTO students2 (name, age, grade) VALUES ('David', 35, 'A'),
                                               ('Emily', 18, 'B'),
											   ('Frank', 31, 'c'),
											   ('Grace', 19, 'A'),
											   ('Henry', 29, 'B');
											   
SELECT * FROM students2 WHERE age BETWEEN 20 AND 29;
SELECT * FROM students2 WHERE grade = 'A';


INSERT INTO students2 (name, age, grade) VALUES('Ance', 19, 'A');

UPDATE students2 SET age = 30 WHERE name = 'Henry';
UPDATE students2 SET name = 'Ance' WHERE name ='Anne';
UPDATE students2 SET grade = 'A' WHERE grade = 'B';

UPDATE students2 SET grade = 'B' WHERE name = 'Charlie';

DELETE FROM students2 WHERE name = 'Henry';

UPDATE students2 SET grade = 'B' WHERE name = 'David';
