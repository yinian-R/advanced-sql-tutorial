/* 用外连接进行行列转换（2）（列→行）：汇总重复项于一列 */
CREATE TABLE Personnel
 (employee   varchar(32), 
  child_1    varchar(32), 
  child_2    varchar(32), 
  child_3    varchar(32), 
  PRIMARY KEY(employee));

INSERT INTO Personnel VALUES('赤井', '一郎', '二郎', '三郎');
INSERT INTO Personnel VALUES('工藤', '春子', '夏子', NULL);
INSERT INTO Personnel VALUES('铃木', '夏子', NULL,   NULL);
INSERT INTO Personnel VALUES('吉田', NULL,   NULL,   NULL);