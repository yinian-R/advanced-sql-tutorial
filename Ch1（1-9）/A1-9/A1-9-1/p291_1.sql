/* 练习题1-9-1：求所有的缺失编号——NOT EXISTS和外连接 
   NOT EXISTS版  */
SELECT seq
  FROM Sequence N
 WHERE seq BETWEEN 1 AND 12
   AND NOT EXISTS
        (SELECT *
           FROM SeqTbl S
          WHERE N.seq = S.seq );