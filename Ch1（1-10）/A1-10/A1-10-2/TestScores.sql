/* 练习题1-10-2：多个条件的特征函数 */
CREATE TABLE TestScores
 (student_id INTEGER NOT NULL,
  subject    VARCHAR(16) NOT NULL,
  score      INTEGER NOT NULL,
    PRIMARY KEY (student_id, subject));

INSERT INTO TestScores VALUES(100, '数学', 100);
INSERT INTO TestScores VALUES(100, '语文', 80);
INSERT INTO TestScores VALUES(100, '理化', 80);
INSERT INTO TestScores VALUES(200, '数学', 80);
INSERT INTO TestScores VALUES(200, '语文', 95);
INSERT INTO TestScores VALUES(300, '数学', 40);
INSERT INTO TestScores VALUES(300, '语文', 50);
INSERT INTO TestScores VALUES(300, '社会', 55);
INSERT INTO TestScores VALUES(400, '数学', 80);
