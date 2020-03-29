/* 练习题1-1：多列数据的最大值（练习题1-1-3也会用到） */
CREATE TABLE Greatests
(id CHAR(1) PRIMARY KEY,
 x   INTEGER NOT NULL,
 y   INTEGER NOT NULL,
 z   INTEGER NOT NULL);

INSERT INTO Greatests VALUES('A', 1, 2, 3);
INSERT INTO Greatests VALUES('B', 5, 5, 2);
INSERT INTO Greatests VALUES('C', 4, 7, 1);
INSERT INTO Greatests VALUES('D', 3, 3, 8);