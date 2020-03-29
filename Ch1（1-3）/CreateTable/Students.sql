/* 1.比较谓词和NULL（1）：排中律不成立 */
CREATE TABLE Students
(name VARCHAR(16) PRIMARY KEY,
 age  INTEGER );

INSERT INTO Students VALUES('布朗', 22);
INSERT INTO Students VALUES('拉里',   19);
INSERT INTO Students VALUES('约翰',   NULL);
INSERT INTO Students VALUES('伯杰', 21);