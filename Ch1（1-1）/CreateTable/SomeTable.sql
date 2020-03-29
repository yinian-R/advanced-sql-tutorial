/* 在UPDATE语句里进行条件分支 */
CREATE TABLE SomeTable
(p_key CHAR(1) PRIMARY KEY,
 col_1 INTEGER NOT NULL, 
 col_2 CHAR(2) NOT NULL);

INSERT INTO SomeTable VALUES('a', 1, '一');
INSERT INTO SomeTable VALUES('b', 2, '二');
INSERT INTO SomeTable VALUES('c', 3, '三');