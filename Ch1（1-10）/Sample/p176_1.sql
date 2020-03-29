/* 如果有查询结果，说明存在缺失的编号：只调查数列的连续性 */
SELECT '存在缺失的编号' AS gap
  FROM SeqTbl
HAVING COUNT(*) <> MAX(seq) - MIN(seq) + 1;
