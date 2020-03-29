/* 全称量化（1）：习惯“肯定<＝>双重否定”之间的转换 */
CREATE TABLE TestScores
(student_id INTEGER,
 subject    VARCHAR(32) ,
 score      INTEGER,
  PRIMARY KEY(student_id, subject));

INSERT INTO TestScores VALUES(100, '数学',100);
INSERT INTO TestScores VALUES(100, '语文',80);
INSERT INTO TestScores VALUES(100, '理化',80);
INSERT INTO TestScores VALUES(200, '数学',80);
INSERT INTO TestScores VALUES(200, '语文',95);
INSERT INTO TestScores VALUES(300, '数学',40);
INSERT INTO TestScores VALUES(300, '语文',90);
INSERT INTO TestScores VALUES(300, '社会',55);
INSERT INTO TestScores VALUES(400, '数学',80);