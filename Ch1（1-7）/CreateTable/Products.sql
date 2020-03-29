/* 5.用于删除重复行的高效SQL */
/* 在PostgreSQL中，需要把“with oids”添加到CREATE TABLE语句的最后 */
CREATE TABLE Products
(name  CHAR(16),
 price INTEGER);

INSERT INTO Products VALUES('苹果',  50);
INSERT INTO Products VALUES('橘子', 100);
INSERT INTO Products VALUES('橘子', 100);
INSERT INTO Products VALUES('橘子', 100);
INSERT INTO Products VALUES('香蕉',  80);

