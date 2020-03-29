/* 全外连接 */
CREATE TABLE Class_A
(id char(1), 
 name varchar(30), 
 PRIMARY KEY(id));

CREATE TABLE Class_B
(id   char(1), 
 name varchar(30), 
 PRIMARY KEY(id));

INSERT INTO Class_A (id, name) VALUES('1', '田中');
INSERT INTO Class_A (id, name) VALUES('2', '铃木');
INSERT INTO Class_A (id, name) VALUES('3', '伊集院');

INSERT INTO Class_B (id, name) VALUES('1', '田中');
INSERT INTO Class_B (id, name) VALUES('2', '铃木');
INSERT INTO Class_B (id, name) VALUES('4', '西园寺');