CREATE TABLE Products
(name VARCHAR(16) PRIMARY KEY,
 price INTEGER NOT NULL);

--可重排列·排列·组合
INSERT INTO Products VALUES('苹果',	50);
INSERT INTO Products VALUES('橘子',	100);
INSERT INTO Products VALUES('香蕉',	80);

--排序
DELETE FROM Products;
INSERT INTO Products VALUES('苹果',	50);
INSERT INTO Products VALUES('橘子',	100);
INSERT INTO Products VALUES('葡萄',	50);
INSERT INTO Products VALUES('西瓜',	80);
INSERT INTO Products VALUES('柠檬',	30);
INSERT INTO Products VALUES('香蕉',	50);

--不聚合，查看集合的包含关系
DELETE FROM Products;
INSERT INTO Products VALUES('橘子',	100);
INSERT INTO Products VALUES('葡萄',	50);
INSERT INTO Products VALUES('西瓜',	80);
INSERT INTO Products VALUES('柠檬',	30);