/* 练习题1-10-1:单重集合与多重集合的一般化 */
CREATE TABLE Materials2
(center VARCHAR(32) NOT NULL,
 receive_date DATE  NOT NULL,
 material VARCHAR(32) NOT NULL,
 orgland  VARCHAR(32) NOT NULL,
 PRIMARY KEY(center, receive_date, material));

INSERT INTO Materials2 VALUES('东京',   '2007-04-01', '锡', 	'智利');
INSERT INTO Materials2 VALUES('东京',   '2007-04-12', '锌', 	'泰国');
INSERT INTO Materials2 VALUES('东京',   '2007-05-17', '铝', 	'巴西');
INSERT INTO Materials2 VALUES('东京',   '2007-05-20', '锌', 	'泰国');
INSERT INTO Materials2 VALUES('大阪',   '2007-04-20', '铜', 	'澳大利亚');
INSERT INTO Materials2 VALUES('大阪',   '2007-04-22', '镍', 	'南非');
INSERT INTO Materials2 VALUES('大阪',   '2007-04-29', '铅', 	'印度');
INSERT INTO Materials2 VALUES('名古屋', '2007-03-15', '钛', 	'玻利维亚');
INSERT INTO Materials2 VALUES('名古屋', '2007-04-01', '钢', 	'智利');
INSERT INTO Materials2 VALUES('名古屋', '2007-04-24', '钢', 	'阿根廷');
INSERT INTO Materials2 VALUES('名古屋', '2007-05-02', '镁', 	'智利');
INSERT INTO Materials2 VALUES('名古屋', '2007-05-10', '钛', 	'泰国');
INSERT INTO Materials2 VALUES('福冈',   '2007-05-10', '锌', 	'美国');
INSERT INTO Materials2 VALUES('福冈',   '2007-05-28', '锡',	'俄罗斯');