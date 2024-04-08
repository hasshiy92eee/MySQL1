-- データベースの作成
CREATE DATABASE IF NOT EXISTS products;

-- データベースの選択
USE product;

-- 商品テーブルの作成
CREATE TABLE IF NOT EXISTS products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    gender CHAR(1),
    age INT,
    birthday YEAR,
    `from` VARCHAR(50)
);



CREATE TABLE IF NOT EXISTS customers (
id INT PRIMARY KEY AUTO INCREMENT,
name VARCHAR(255),
gender VARCHAR(1),
age INT,
birthday YEAR,
`from` VARCHAR (50)
);

-- データの挿入

INSERT INTO products (name, gender, age, birthday, `from`)
VALUES
('大原真', '男', 37, 1986, '岐阜'),
('峯和葉', '女', 26, 1997, '群馬'),
('田中太郎', '男', 32, 1990, '東京'),
('山田花子', '女', 29, 1993, '大阪'),
('鈴木一郎', '男', 35, 1987, '福岡'),
('佐藤ゆり', '女', 31, 1991, '北海道'),
('斎藤健太', '男', 28, 1994, '京都'),
('伊藤美咲', '女', 27, 1995, '広島'),
('木村直人', '男', 33, 1989, '愛知'),
('中村美咲', '女', 30, 1992, '神奈川'),
('小林太郎', '男', 29, 1993, '埼玉'),
('太田稔', '男', 34, 1989, '三重'),
('西条孝俊', '男', 41, 1973, '福岡');

SELECT c.name AS customer_name, p.name AS product_name
FROM customers c
JOIN products p ON c.gender = p.gender;