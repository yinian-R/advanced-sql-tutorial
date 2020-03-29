/* 查询不包含NULL的集合 */
CREATE TABLE Students2
(student_id   INTEGER PRIMARY KEY,
 dpt          VARCHAR(16) NOT NULL,
 sbmt_date    DATE);

INSERT INTO Students2 VALUES(100,  '理学院',   '2005-10-10');
INSERT INTO Students2 VALUES(101,  '理学院',   '2005-09-22');
INSERT INTO Students2 VALUES(102,  '文学院',   NULL);
INSERT INTO Students2 VALUES(103,  '文学院',   '2005-09-10');
INSERT INTO Students2 VALUES(200,  '文学院',   '2005-09-22');
INSERT INTO Students2 VALUES(201,  '工学院',   NULL);
INSERT INTO Students2 VALUES(202,  '经济学院', '2005-09-25');