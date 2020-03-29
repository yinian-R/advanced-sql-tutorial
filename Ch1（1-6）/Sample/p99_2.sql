/* 查询与过去最临近的年份营业额相同的年份：同时使用自连接 */
SELECT S1.year AS year,
       S1.sale AS sale
  FROM Sales2 S1, Sales2 S2
 WHERE S1.sale = S2.sale
   AND S2.year = (SELECT MAX(year)
                    FROM Sales2 S3
                   WHERE S1.year > S3.year)
 ORDER BY year;