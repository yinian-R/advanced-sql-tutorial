/* 练习题1-6-1：简化多行数据的比较*/
SELECT S1.year, S1.sale,
       CASE SIGN(sale -
              (SELECT sale
                 FROM Sales S2
                WHERE S2.year = S1.year - 1) )
            WHEN 0  THEN '→'  /* 持平 */
            WHEN 1  THEN '↑'  /* 增长   */
            WHEN -1 THEN '↓'  /* 减少   */
            ELSE '—' END AS var
  FROM Sales S1
 ORDER BY year;