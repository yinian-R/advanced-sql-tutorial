/* 练习题1-4-1：修改编号缺失的检查逻辑，使结果总是返回一行数据 */
SELECT ' 存在缺失的编号' AS gap
  FROM SeqTbl
HAVING COUNT(*) <> MAX(seq)
UNION ALL
SELECT ' 不存在缺少的编号' AS gap
  FROM SeqTbl
HAVING COUNT(*) = MAX(seq);