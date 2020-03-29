/* 求每一年与过去最临近的年份之间的营业额之差（1）：结果里不包含最早的年份 */
SELECT S2.year AS pre_year,
       S1.year AS now_year,
       S2.sale AS pre_sale,
       S1.sale AS now_sale,
       S1.sale - S2.sale  AS diff
 FROM Sales2 S1, Sales2 S2
 WHERE S2.year = (SELECT MAX(year)
                    FROM Sales2 S3
                   WHERE S1.year > S3.year)
 ORDER BY now_year;