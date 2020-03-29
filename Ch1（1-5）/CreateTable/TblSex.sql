/* 在交叉表里制作嵌套式表侧栏 */
CREATE TABLE TblSex
(sex_cd   char(1), 
 sex varchar(5), 
 PRIMARY KEY(sex_cd));

CREATE TABLE TblAge 
(age_class char(1), 
 age_range varchar(30), 
 PRIMARY KEY(age_class));

CREATE TABLE TblPop 
(pref_name  varchar(30), 
 age_class  char(1), 
 sex_cd     char(1), 
 population integer, 
 PRIMARY KEY(pref_name, age_class,sex_cd));

INSERT INTO TblSex (sex_cd, sex ) VALUES('m',	'男');
INSERT INTO TblSex (sex_cd, sex ) VALUES('f',	'女');

INSERT INTO TblAge (age_class, age_range ) VALUES('1',	'21岁～30岁');
INSERT INTO TblAge (age_class, age_range ) VALUES('2',	'31岁～40岁');
INSERT INTO TblAge (age_class, age_range ) VALUES('3',	'41岁～50岁');

INSERT INTO TblPop VALUES('秋田', '1', 'm', 400 );
INSERT INTO TblPop VALUES('秋田', '3', 'm', 1000 );
INSERT INTO TblPop VALUES('秋田', '1', 'f', 800 );
INSERT INTO TblPop VALUES('秋田', '3', 'f', 1000 );
INSERT INTO TblPop VALUES('青森', '1', 'm', 700 );
INSERT INTO TblPop VALUES('青森', '1', 'f', 500 );
INSERT INTO TblPop VALUES('青森', '3', 'f', 800 );
INSERT INTO TblPop VALUES('东京', '1', 'm', 900 );
INSERT INTO TblPop VALUES('东京', '1', 'f', 1500 );
INSERT INTO TblPop VALUES('东京', '3', 'f', 1200 );
INSERT INTO TblPop VALUES('千叶', '1', 'm', 900 );
INSERT INTO TblPop VALUES('千叶', '1', 'f', 1000 );
INSERT INTO TblPop VALUES('千叶', '3', 'f', 900 );