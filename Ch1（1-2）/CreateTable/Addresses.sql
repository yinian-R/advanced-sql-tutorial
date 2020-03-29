--查找局部不一致的列
CREATE TABLE Addresses
(name VARCHAR(32),
 family_id INTEGER,
 address VARCHAR(32),
 PRIMARY KEY(name, family_id));

INSERT INTO Addresses VALUES('前田义明', '100', '东京都港区虎之门3-2-29');
INSERT INTO Addresses VALUES('前田由美', '100', '东京都港区虎之门3-2-92');
INSERT INTO Addresses VALUES('加藤茶',   '200', '东京都新宿区西新宿2-8-1');
INSERT INTO Addresses VALUES('加藤胜',   '200', '东京都新宿区西新宿2-8-1');
INSERT INTO Addresses VALUES('福尔摩斯',  '300', '贝克街221B');
INSERT INTO Addresses VALUES('华生',  '400', '贝克街221B');