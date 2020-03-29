/* 不论是否存在缺失的编号都返回一行结果 */
SELECT CASE WHEN COUNT(*) = 0
               THEN '表为空'
            WHEN COUNT(*) <> MAX(seq) - MIN(seq) + 1
               THEN '存在缺失的编号'
            ELSE '连续' END AS gap
  FROM SeqTbl;