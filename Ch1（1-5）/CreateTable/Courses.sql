/* 用外连接进行行列转换（1）（行→列）：制作交叉表 */
CREATE TABLE Courses
(name   VARCHAR(32), 
 course VARCHAR(32), 
 PRIMARY KEY(name, course));

INSERT INTO Courses VALUES('赤井', 'SQL入门');
INSERT INTO Courses VALUES('赤井', 'UNIX基础');
INSERT INTO Courses VALUES('铃木', 'SQL入门');
INSERT INTO Courses VALUES('工藤', 'SQL入门');
INSERT INTO Courses VALUES('工藤', 'Java中级');
INSERT INTO Courses VALUES('吉田', 'UNIX基础');
INSERT INTO Courses VALUES('渡边', 'SQL入门');