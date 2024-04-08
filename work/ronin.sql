
CREATE DATABASE ronin;

USE ronin;

create table cast (
  id       int    primary key,
  name     varchar(100),
  sex      char(1),
  birghday date,
  `from`   varchar(10),
  office   varchar(100)
);

insert into cast
 values
(1, '���c�F�Y',   'm', '1940-02-29', '�����s', '�M���hB'),
(2, '���V���Y',   'm', '1931-11-29', '��t��', '���v��'),
(3, '�����q', 'f', '1958-12-13', '�V����', '���}�j�e'),
(4, '�΋��@�i',   'm', '1941-08-09', '�����s', '���c�掵�a��'),
(5, '�c���M�q',   'm', '1932-11-23', '�򕌌�', '�o�D��'),
(6, '���c������', 'f', '1964-11-27', '�����s', '�I�t�B�XPSC');


SELECT * FROM cast;

