/* 求每一年与过去最临近的年份之间的营业额之差（2）：使用自外连接。结果里包含最早的年份 */
SELECT S2.year AS pre_year,
       S1.year AS now_year,
       S2.sale AS pre_sale,
       S1.sale AS now_sale,
       S1.sale - S2.sale AS diff
 FROM Sales2 S1 LEFT OUTER JOIN Sales2 S2
   ON S2.year = (SELECT MAX(year)
                   FROM Sales2 S3
                  WHERE S1.year > S3.year)
 ORDER BY now_year;