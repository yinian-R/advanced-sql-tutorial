/* 用HAVING子句进行子查询：求众数(求中位数时也用本代码) */
CREATE TABLE Graduates
(name   VARCHAR(16) PRIMARY KEY,
 income INTEGER NOT NULL);

INSERT INTO Graduates VALUES('桑普森', 400000);
INSERT INTO Graduates VALUES('迈克',     30000);
INSERT INTO Graduates VALUES('怀特',   20000);
INSERT INTO Graduates VALUES('阿诺德', 20000);
INSERT INTO Graduates VALUES('史密斯',     20000);
INSERT INTO Graduates VALUES('劳伦斯',   15000);
INSERT INTO Graduates VALUES('哈德逊',   15000);
INSERT INTO Graduates VALUES('肯特',     10000);
INSERT INTO Graduates VALUES('贝克',   10000);
INSERT INTO Graduates VALUES('斯科特',   10000);