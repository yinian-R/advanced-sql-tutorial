/* 其他解法3：在HAVING子句中使用极值函数 */
SELECT key
  FROM ArrayTbl2
 GROUP BY key
HAVING MAX(val) = 1
   AND MIN(val) = 1;