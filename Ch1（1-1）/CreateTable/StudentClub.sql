/* 在CASE表达式中使用聚合函数 */
CREATE TABLE StudentClub
(std_id  INTEGER,
 club_id INTEGER,
 club_name VARCHAR(32),
 main_club_flg CHAR(1),
 PRIMARY KEY (std_id, club_id));

INSERT INTO StudentClub VALUES(100, 1, '棒球',        'Y');
INSERT INTO StudentClub VALUES(100, 2, '管弦乐',      'N');
INSERT INTO StudentClub VALUES(200, 2, '管弦乐',      'N');
INSERT INTO StudentClub VALUES(200, 3, '羽毛球','Y');
INSERT INTO StudentClub VALUES(200, 4, '足球',    'N');
INSERT INTO StudentClub VALUES(300, 4, '足球',    'N');
INSERT INTO StudentClub VALUES(400, 5, '游泳',        'N');
INSERT INTO StudentClub VALUES(500, 6, '围棋',        'N');