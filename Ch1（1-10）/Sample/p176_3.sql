/* 查找最小的缺失编号：表中没有1时返回1 */
SELECT CASE WHEN MIN(seq) > 1          /* 最小值不是1时→返回1 */
            THEN 1
            ELSE (SELECT MIN(seq +1)  /* 最小值是1时→返回最小的缺失编号 */
                    FROM SeqTbl S1
                   WHERE NOT EXISTS
                        (SELECT * 
                           FROM SeqTbl S2 
                          WHERE S2.seq = S1.seq + 1))
             END AS min_gap
  FROM SeqTbl;