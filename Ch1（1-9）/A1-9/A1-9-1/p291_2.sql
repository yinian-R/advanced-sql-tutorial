/* 练习题1-9-1：求所有的缺失编号——NOT EXISTS和外连接 
   NOT EXISTS版  */
SELECT N.seq
  FROM Sequence N LEFT OUTER JOIN SeqTbl S
    ON N.seq = S.seq
 WHERE N.seq BETWEEN 1 AND 12
   AND S.seq IS NULL;