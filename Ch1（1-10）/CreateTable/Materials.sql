--单重集合与多重集合
CREATE TABLE Materials
(center         CHAR(12) NOT NULL,
 receive_date   DATE     NOT NULL,
 material       CHAR(12) NOT NULL,
 PRIMARY KEY(center, receive_date));

INSERT INTO Materials VALUES('东京'	,'2007-4-01',	'锡');
INSERT INTO Materials VALUES('东京'	,'2007-4-12',	'锌');
INSERT INTO Materials VALUES('东京'	,'2007-5-17',	'铝');
INSERT INTO Materials VALUES('东京'	,'2007-5-20',	'锌');
INSERT INTO Materials VALUES('大阪'	,'2007-4-20',	'铜');
INSERT INTO Materials VALUES('大阪'	,'2007-4-22',	'镍');
INSERT INTO Materials VALUES('大阪'	,'2007-4-29',	'铅');
INSERT INTO Materials VALUES('名古屋',	'2007-3-15',	'钛');
INSERT INTO Materials VALUES('名古屋',	'2007-4-01',	'钢');
INSERT INTO Materials VALUES('名古屋',	'2007-4-24',	'钢');
INSERT INTO Materials VALUES('名古屋',	'2007-5-02',	'镁');
INSERT INTO Materials VALUES('名古屋',	'2007-5-10',	'钛');
INSERT INTO Materials VALUES('福冈'	,'2007-5-10',	'锌');
INSERT INTO Materials VALUES('福冈'	,'2007-5-28',	'锡');