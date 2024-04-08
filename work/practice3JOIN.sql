-- データベースの作成と使用
CREATE DATABASE practice_db;
USE practice_db;

-- students2テーブルの作成
CREATE TABLE students2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    grade VARCHAR(10)
);

-- データの挿入
INSERT INTO students2 (name, age, grade) VALUES 
('Alice', 20, 'A'),
('Bob', 22, 'B'),
('Charlie', 21, 'A'),
('David', 35, 'A'),
('Emily', 18, 'B'),
('Frank', 31, 'C'),
('Grace', 19, 'A'),
('Henry', 29, 'B'),
('Ance', 19, 'A');






CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT,
    grade VARCHAR(10),
    specialstudentsnumber INT,
    club VARCHAR(50),
    gender VARCHAR(10)
);

-- データの挿入
INSERT INTO students (name, age, grade, specialstudentsnumber, club, gender)
VALUES 
('jonasen', 19, 'A', 1, 'football', '男'),
('dio', 19, 'A', 1, 'assassin', '男'),
('eiles', 19, 'B', 1, 'independent', '女'),
('boss', 22, 'C', 3, 'wrestler', '男'),
('reen', 20, 'B', 2, 'chess', '男'),
('mei', 22, 'A', 2, 'art', '女'),
('seren', 21, 'C', 3, 'chess', '女'),
('mals', 18, 'B', 2, 'soccer', '男'),
('bim', 25, 'B', 2, 'football', '男'),
('fox', 20, 'C', 2, 'soccer', '男'),
('brian', 23, 'B', 2, 'wrestler', '男'),
('hory', 21, 'B', 2, 'chess', '女'),
('milky', 22, 'C', 2, 'art', '女'),
('enderman', 999, 'A', 1, 'comprehensive', '?');









SELECT s.name,s2.club
FROM students s
JOIN students2 s2 ON s.id = s2.id;