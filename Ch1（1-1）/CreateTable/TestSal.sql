/* 用CHECK约束定义多个列的条件关系 */
CREATE TABLE TestSal
(sex CHAR(1) ,
 salary INTEGER,
    CONSTRAINT check_salary CHECK
             ( CASE WHEN sex = '2'
                    THEN CASE WHEN salary <= 200000
                              THEN 1 ELSE 0 END
                    ELSE 1 END = 1 ));

INSERT INTO TestSal VALUES(1, 200000);
INSERT INTO TestSal VALUES(1, 300000);
INSERT INTO TestSal VALUES(1, NULL);
INSERT INTO TestSal VALUES(2, 200000);
INSERT INTO TestSal VALUES(2, 300000);  --error
INSERT INTO TestSal VALUES(2, NULL);
INSERT INTO TestSal VALUES(1, 300000);