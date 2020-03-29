/* 求与上一年营业额一样的年份（2）：使用自连接 */
SELECT S1.year, S1.sale
  FROM Sales S1, 
       Sales S2
 WHERE S2.sale = S1.sale
   AND S2.year = S1.year - 1
 ORDER BY year;