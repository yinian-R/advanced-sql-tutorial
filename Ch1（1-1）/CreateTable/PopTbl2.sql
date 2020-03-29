/* 用一条SQL语句进行不同条件的统计 */
CREATE TABLE PopTbl2
(pref_name VARCHAR(32),
 sex CHAR(1) NOT NULL,
 population INTEGER NOT NULL,
    PRIMARY KEY(pref_name, sex));

INSERT INTO PopTbl2 VALUES('德岛', '1',	60 );
INSERT INTO PopTbl2 VALUES('德岛', '2',	40 );
INSERT INTO PopTbl2 VALUES('香川', '1',	100);
INSERT INTO PopTbl2 VALUES('香川', '2',	100);
INSERT INTO PopTbl2 VALUES('爱媛', '1',	100);
INSERT INTO PopTbl2 VALUES('爱媛', '2',	50 );
INSERT INTO PopTbl2 VALUES('高知', '1',	100);
INSERT INTO PopTbl2 VALUES('高知', '2',	100);
INSERT INTO PopTbl2 VALUES('福冈', '1',	100);
INSERT INTO PopTbl2 VALUES('福冈', '2',	200);
INSERT INTO PopTbl2 VALUES('佐贺', '1',	20 );
INSERT INTO PopTbl2 VALUES('佐贺', '2',	80 );
INSERT INTO PopTbl2 VALUES('长崎', '1',	125);
INSERT INTO PopTbl2 VALUES('长崎', '2',	125);
INSERT INTO PopTbl2 VALUES('东京', '1',	250);
INSERT INTO PopTbl2 VALUES('东京', '2',	150);