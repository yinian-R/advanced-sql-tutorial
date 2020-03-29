/* 查询表中“不”存在的数据 */
CREATE TABLE Meetings
(meeting CHAR(32) NOT NULL,
 person  CHAR(32) NOT NULL,
 PRIMARY KEY (meeting, person));

INSERT INTO Meetings VALUES('第1次', '伊藤');
INSERT INTO Meetings VALUES('第1次', '水岛');
INSERT INTO Meetings VALUES('第1次', '坂东');
INSERT INTO Meetings VALUES('第2次', '伊藤');
INSERT INTO Meetings VALUES('第2次', '宫田');
INSERT INTO Meetings VALUES('第3次', '坂东');
INSERT INTO Meetings VALUES('第3次', '水岛');
INSERT INTO Meetings VALUES('第3次', '宫田');
