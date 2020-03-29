/* 练习题1-2-2：分地区排序 */
CREATE TABLE DistrictProducts
(district  VARCHAR(16) NOT NULL,
 name      VARCHAR(16) NOT NULL,
 price     INTEGER NOT NULL,
 PRIMARY KEY(district, name, price));

INSERT INTO DistrictProducts VALUES('东北', '橘子',	100);
INSERT INTO DistrictProducts VALUES('东北', '苹果',	50);
INSERT INTO DistrictProducts VALUES('东北', '葡萄',	50);
INSERT INTO DistrictProducts VALUES('东北', '柠檬',	30);
INSERT INTO DistrictProducts VALUES('关东', '柠檬',	100);
INSERT INTO DistrictProducts VALUES('关东', '菠萝',	100);
INSERT INTO DistrictProducts VALUES('关东', '苹果',	100);
INSERT INTO DistrictProducts VALUES('关东', '葡萄',	70);
INSERT INTO DistrictProducts VALUES('关西', '柠檬',	70);
INSERT INTO DistrictProducts VALUES('关西', '西瓜',	30);
INSERT INTO DistrictProducts VALUES('关西', '苹果',	20);