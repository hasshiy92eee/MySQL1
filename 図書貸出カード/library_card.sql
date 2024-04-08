
-- �f�[�^�x�[�X�̍쐬

CREATE DATABASE library_card;

USE library_card;

-- member�\

CREATE TABLE member (
  id CHAR(4) PRIMARY KEY,
  name VARCHAR(50)
);

INSERT INTO member (id, name) VALUES
('m001', '��������'),
('m002', '��t�^��'),
('m003', '�k��H�Ӗ�');

SELECT * FROM member;

-- lending�\

CREATE TABLE lending (
  id CHAR(4) PRIMARY KEY,
  member_id CHAR(4),
  lending_date DATE,
  return_date DATE
);

ALTER TABLE lending
ADD
  CONSTRAINT fk_member
  FOREIGN KEY (member_id)
  REFERENCES member (id);


INSERT INTO lending
 (id, member_id, lending_date, return_date)
VALUES
 ('L001', 'm001', '2024/04/02', '2024/04/18'),
 ('L002', 'm002', '2024/04/02', '2024/04/18');

SELECT * FROM lending;

 
-- books�\

CREATE TABLE books (
  id CHAR(5) PRIMARY KEY,
  name VARCHAR(255),
  author VARCHAR(255)
);

INSERT INTO books
  (id, name, author)
VALUES
('B0011', '�J���[�̍���', '�R���B�Y'),
('B0012', 'HTMLCSS�̖{', 'Mana'),
('B0013', 'JavaScript������', '���[���ܘY'),
('C0013', '������', '��R�{�B');

SELECT * FROM books;


-- lend_book�\

CREATE TABLE lend_book (
 lending_id CHAR(4),
 books_id   CHAR(5),
 PRIMARY KEY (lending_id, books_id)
);

ALTER TABLE lend_book
ADD
  CONSTRAINT bk_lend
  FOREIGN KEY (lending_id)
  REFERENCES lending (id);
  
ALTER TABLE lend_book
ADD
  CONSTRAINT bk_books
  FOREIGN KEY (books_id)
  REFERENCES books (id);
  

INSERT INTO lend_book
  (lending_id, books_id)
VALUES
('L001', 'B0011'),
('L001', 'B0012'),
('L001', 'B0013'),
('L002', 'C0013');

SELECT * FROM lend_book;


-- �O���L�[�̍폜
/*
ALTER TABLE lend_book 
DROP FOREIGN KEY bk_books;
*/


--
-- ����
--

SELECT
  len.id AS �ݏo�ԍ�,
  m.id AS ����ԍ�,
  m.name AS �����,
  len.lending_date AS �ݏo��,
  len.return_date AS �ԋp�\���,
  b.id AS ���Дԍ�,
  b.name AS ���Ж�,
  b.author AS ����
FROM lend_book lb
  INNER JOIN lending len
  ON lb.lending_id = len.id
    INNER JOIN member m
    ON len.member_id = m.id
      INNER JOIN books b
      ON lb.books_id = b.id
ORDER BY lb.lending_id ASC
;
