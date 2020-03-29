/* 其他解法1：使用ALL谓词 */
SELECT DISTINCT key
  FROM ArrayTbl2 A1
 WHERE 1 = ALL
          (SELECT val
             FROM ArrayTbl2 A2
            WHERE A1.key = A2.key);