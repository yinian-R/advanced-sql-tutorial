/* 全称量化（2）：集合VS谓词——哪个更强大？ */
CREATE TABLE Projects
(project_id VARCHAR(32),
 step_nbr   INTEGER ,
 status     VARCHAR(32),
  PRIMARY KEY(project_id, step_nbr));

INSERT INTO Projects VALUES('AA100', 0, '完成');
INSERT INTO Projects VALUES('AA100', 1, '等待');
INSERT INTO Projects VALUES('AA100', 2, '等待');
INSERT INTO Projects VALUES('B200',  0, '等待');
INSERT INTO Projects VALUES('B200',  1, '等待');
INSERT INTO Projects VALUES('CS300', 0, '完成');
INSERT INTO Projects VALUES('CS300', 1, '完成');
INSERT INTO Projects VALUES('CS300', 2, '等待');
INSERT INTO Projects VALUES('CS300', 3, '等待');
INSERT INTO Projects VALUES('DY400', 0, '完成');
INSERT INTO Projects VALUES('DY400', 1, '完成');
INSERT INTO Projects VALUES('DY400', 2, '完成');