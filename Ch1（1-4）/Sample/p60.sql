/* 求众数的SQL语句(2)：使用极值函数 */
SELECT income, COUNT(*) AS cnt
  FROM Graduates
 GROUP BY income
HAVING COUNT(*) >=  ( SELECT MAX(cnt)
                        FROM ( SELECT COUNT(*) AS cnt
                                 FROM Graduates
                             GROUP BY income) TMP) ;