CREATE DATABASE IF NOT EXISTS pro;

USE pro;

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders (order_date, customer_id)
VALUES
('2024-04-01', 1),
('2024-04-02', 2),
('2024-04-03', 1),
('2024-04-04', 3);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);

INSERT INTO customers (customer_name, country)
VALUES
('John Doe', 'USA'),
('Alice Smith', 'Canada'),
('Emma Johnson', 'UK');

SELECT o.order_id, o.order_date, c.customer_name, c.country
FROM orders o
 INNER JOIN customers c ON o.customer_id = c.customer_id
 ORDER BY o.order_date DESC;

CREATE USER 'prouser'@'localhost'
 IDENTIFIED BY 'prouser';

GRANT ALL ON pro_live.*
 TO 'prouser'@'localhost';
 
 ALTER TABLE orders ADD FOREIGN KEY
  (customer_id) REFERENCES customers(customer_id);

 
 
 mysql -u root -p -B > pro.sql
 
 mysql -u root -p -B < pro.sql
