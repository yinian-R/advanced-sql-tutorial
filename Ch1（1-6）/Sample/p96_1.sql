/* 求与上一年营业额一样的年份（1）：使用关联子查询 */
SELECT year,sale
  FROM Sales S1
 WHERE sale = (SELECT sale
                 FROM Sales S2
                WHERE S2.year = S1.year - 1)
 ORDER BY year;