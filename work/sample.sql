
-- 
-- sample�f�[�^�x�[�X
-- 
CREATE DATABASE IF NOT EXISTS sample;

-- 
-- sample���[�U�[�̍쐬
-- 
CREATE USER IF NOT EXISTS 'sampleuser'@'localhost'
IDENTIFIED BY 'sampleuser';

GRANT ALL ON sample.* TO 'sampleuser'@'localhost';

-- �g�p�錾
USE sample;


-- 
-- emp�\�̒�`
-- 
DROP TABLE IF EXISTS emp;

CREATE TABLE emp (
  id       INT         AUTO_INCREMENT,
  name     VARCHAR(20) NOT NULL,
  age      INT         NOT NULL,
  birthday YEAR        NOT NULL,
  dept_id  CHAR(3),
  PRIMARY KEY (id)
);

-- 
-- dept�\�̒�`
-- 
DROP TABLE IF EXISTS dept;

CREATE TABLE dept (
  id   CHAR(3)     PRIMARY KEY,
  name VARCHAR(20) NOT NULL
);

--
-- �O���L�[����̐ݒ�
--
ALTER TABLE emp
  ADD
  CONSTRAINT fk_dept_id
  FOREIGN KEY (dept_id) REFERENCES dept (id);


-- 
-- �f�[�^�̓o�^
-- 

-- dept�e�[�u��

INSERT INTO dept
  (id, name)
VALUES
  ('001', '������'),
  ('002', '�c�ƕ�'),
  ('003', '�o����'),
  ('004', '�J����'),
  ('005', '�l����'),
  ('006', '���V�X�e����');

-- emp�e�[�u��

INSERT INTO emp
(name, age, birthday, dept_id)
VALUES
('��������',   40, 1933, '001'),
('��t�^��',   34, 1939, '002'),
('�k��H�Ӗ�', 30, 1943, '003'),
('����ߎq',   26, 1947, '002');







SELECT * FROM emp;
SELECT * FROM dept;


SELECT
  e.id AS ID,
  e.name AS ���O,
  e.age AS �N��,
  d.name AS ������
 FROM emp e
  INNER JOIN dept d
  ON e.dept_id = d.id
ORDER BY e.id ASC;


--
-- dept_id �̂Ȃ��f�[�^
--
INSERT INTO emp
 (name, age, birthday)
VALUES
('���c�O���v', 38, 1935);


--
-- ���O������
-- from�͑S�\��
--
/*
SELECT
  e.id AS ID,
  e.name AS ���O,
  e.age AS �N��,
  d.name AS ������
FROM emp e
  LEFT OUTER JOIN dept d
  ON e.dept_id = d.id
ORDER BY e.id ASC;
*/

--
-- �E�O������
-- from�͑S�\�����Ȃ�
--
/*
SELECT
  e.id AS ID,
  e.name AS ���O,
  e.age AS �N��,
  d.name AS ������
FROM emp e
  RIGHT OUTER JOIN dept d
  ON e.dept_id = d.id
ORDER BY e.id ASC;
*/


-- ���݂��Ȃ�dept_id

INSERT INTO emp
  (name, age, birthday, dept_id)
VALUES
  ('�R��V��', 35, 1937, '006');

/*
ERROR 1452 (23000): 
 Cannot add or update a child row: 
 a foreign key constraint fails 
 (`sample`.`emp`, 
   CONSTRAINT `emp_ibfk_1` 
   FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`))
*/
