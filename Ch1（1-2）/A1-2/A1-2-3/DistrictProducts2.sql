/* 练习题1-2-3：更新位次 */
CREATE TABLE DistrictProducts2
(district  VARCHAR(16) NOT NULL,
 name      VARCHAR(16) NOT NULL,
 price     INTEGER NOT NULL,
 ranking   INTEGER,
 PRIMARY KEY(district, name));

INSERT INTO DistrictProducts2 VALUES('东北', '橘子',	100, NULL);
INSERT INTO DistrictProducts2 VALUES('东北', '苹果',	50 , NULL);
INSERT INTO DistrictProducts2 VALUES('东北', '葡萄',	50 , NULL);
INSERT INTO DistrictProducts2 VALUES('东北', '柠檬',	30 , NULL);
INSERT INTO DistrictProducts2 VALUES('关东', '柠檬',	100, NULL);
INSERT INTO DistrictProducts2 VALUES('关东', '菠萝',	100, NULL);
INSERT INTO DistrictProducts2 VALUES('关东', '苹果',	100, NULL);
INSERT INTO DistrictProducts2 VALUES('关东', '葡萄',	70 , NULL);
INSERT INTO DistrictProducts2 VALUES('关西', '柠檬',	70 , NULL);
INSERT INTO DistrictProducts2 VALUES('关西', '西瓜',	30 , NULL);
INSERT INTO DistrictProducts2 VALUES('关西', '苹果',	20 , NULL);
