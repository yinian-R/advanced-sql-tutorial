/* 求中位数的SQL语句：在HAVING子句中使用非等值自连接 */
SELECT AVG(DISTINCT income)
  FROM (SELECT T1.income
          FROM Graduates T1, Graduates T2
      GROUP BY T1.income
               /* S1的条件 */
        HAVING SUM(CASE WHEN T2.income >= T1.income THEN 1 ELSE 0 END) 
                   >= COUNT(*) / 2
               /* S2的条件 */
           AND SUM(CASE WHEN T2.income <= T1.income THEN 1 ELSE 0 END) 
                   >= COUNT(*) / 2 ) TMP;