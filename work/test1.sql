CREATE DATABASE IF NOT EXISTS p;

USE P;

CREATE TABLE o (
id INT PRIMARY KEY AUTO_INCREMENT,
order_date DATE NOT NULL,
c_id INT NOT NULL PRIMARY KEY,
FOREIGN KEY (c_id) REFERENCES cd(c_id)
);

DESC o;

SHOW TABLES;

SHOW CREATE TABLE o;

INSERT INTO o (order_date, c_id)
VALUES
('2024-04-01', 1),
('2024-04-02', 2),
('2024-04-03', 1),
('2024-04-04', 3);

SELECT * FROM o

CLEATE TABLE c (
c_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
country VARCHAR(255) NOT NULL
);

INSERT INTO c (name, country)
VALUES
('John Doe', 'USA'),
('Alice Smith', 'Canada'),
('Emma Johnson', 'UK');

INSERT INTO c (name, country)
VALUES
('Mire Jenifer', 'USA'),
('Milia Frost', 'Ostoria');

SELECT o.id, o.order_, c.name, c.country
FROM o
INNER JOIN c ON o.c_id = c.c_id
ORDER BY 0.order_date DESC;

DELETE FROM o



SELECT * FROM o

ALTER TABLE o ADD 
 FOREIGN KEY (id) REFERENCEC id(id);
 
CREATE USER 'prouser'@'localhost'
 IDENTIFIED BY 'prouser';
 
GRANT ALL ON pro_live.* TO 'prouser'@'localhost'; 


 
mysql -u root -p -B test1 > test1.dump
  
mysql -u root -p -B test1 < test1.dump


-- ----------------------------------------------------
