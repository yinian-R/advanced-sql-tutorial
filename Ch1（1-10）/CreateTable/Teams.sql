--各队，全体点名！
CREATE TABLE Teams
(member  CHAR(12) NOT NULL PRIMARY KEY,
 team_id INTEGER  NOT NULL,
 status  CHAR(8)  NOT NULL);

INSERT INTO Teams VALUES('乔',     1, '待命');
INSERT INTO Teams VALUES('肯',     1, '出勤中');
INSERT INTO Teams VALUES('米克',   1, '待命');
INSERT INTO Teams VALUES('卡伦',   2, '出勤中');
INSERT INTO Teams VALUES('凯斯',   2, '休息');
INSERT INTO Teams VALUES('简',     3, '待命');
INSERT INTO Teams VALUES('哈特',   3, '待命');
INSERT INTO Teams VALUES('迪克',   3, '待命');
INSERT INTO Teams VALUES('贝斯',   4, '待命');
INSERT INTO Teams VALUES('阿伦',   5, '出勤中');
INSERT INTO Teams VALUES('罗伯特', 5, '休息');
INSERT INTO Teams VALUES('卡根',   5, '待命');