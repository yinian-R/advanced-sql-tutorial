/* 4.寻找相等的子集 */
CREATE TABLE SupParts
(sup  CHAR(32) NOT NULL,
 part CHAR(32) NOT NULL,
 PRIMARY KEY(sup, part));

INSERT INTO SupParts VALUES('A',  '螺丝');
INSERT INTO SupParts VALUES('A',  '螺母');
INSERT INTO SupParts VALUES('A',  '管子');
INSERT INTO SupParts VALUES('B',  '螺丝');
INSERT INTO SupParts VALUES('B',  '管子');
INSERT INTO SupParts VALUES('C',  '螺丝');
INSERT INTO SupParts VALUES('C',  '螺母');
INSERT INTO SupParts VALUES('C',  '管子');
INSERT INTO SupParts VALUES('D',  '螺丝');
INSERT INTO SupParts VALUES('D',  '管子');
INSERT INTO SupParts VALUES('E',  '保险丝');
INSERT INTO SupParts VALUES('E',  '螺母');
INSERT INTO SupParts VALUES('E',  '管子');
INSERT INTO SupParts VALUES('F',  '保险丝');