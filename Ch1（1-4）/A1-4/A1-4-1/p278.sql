/* 练习题1-4-1：修改编号缺失的检查逻辑，使结果总是返回一行数据 */
SELECT CASE WHEN COUNT(*) <> MAX(seq)
            THEN '存在缺失的编号'
            ELSE '不存在缺失的编号' END AS gap
  FROM SeqTbl;