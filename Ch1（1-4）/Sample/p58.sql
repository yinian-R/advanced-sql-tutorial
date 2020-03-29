/* 查询缺失编号的最小值 */
SELECT MIN(seq + 1) AS gap
  FROM SeqTbl
 WHERE (seq+ 1) NOT IN ( SELECT seq FROM SeqTbl);