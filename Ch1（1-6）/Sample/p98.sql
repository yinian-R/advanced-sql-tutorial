/* 求出是增长了还是减少了，抑或是维持现状（2）：使用自连接查询 */
SELECT S1.year, S1.sale,
       CASE WHEN S1.sale = S2.sale THEN '→' 
            WHEN S1.sale > S2.sale THEN '↑' 
            WHEN S1.sale < S2.sale THEN '↓' 
       ELSE '—' END AS var
  FROM Sales S1, Sales S2
 WHERE S2.year = S1.year-1
 ORDER BY year;