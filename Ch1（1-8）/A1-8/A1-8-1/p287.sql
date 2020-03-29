/* 正确解法 */
SELECT DISTINCT key
  FROM ArrayTbl2 A1
 WHERE NOT EXISTS
        (SELECT *
           FROM ArrayTbl2 A2
          WHERE A1.key = A2.key
            AND (A2.val <> 1 OR A2.val IS NULL));