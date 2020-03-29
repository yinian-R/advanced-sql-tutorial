/* 求出是增长了还是减少了，抑或是维持现状（1）：使用关联子查询 */
SELECT S1.year, S1.sale,
       CASE WHEN sale =
             (SELECT sale
                FROM Sales S2
               WHERE S2.year = S1.year - 1) THEN '→' /* 持平 */
            WHEN sale >
             (SELECT sale
                FROM Sales S2
               WHERE S2.year = S1.year - 1) THEN '↑' /* 增长 */
            WHEN sale <
             (SELECT sale
                FROM Sales S2
               WHERE S2.year = S1.year - 1) THEN '↓' /* 减少 */
       ELSE '—' END AS var
  FROM Sales S1
 ORDER BY year;