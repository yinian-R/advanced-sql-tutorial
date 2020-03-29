/* 查询与过去最临近的年份营业额相同的年份 */
SELECT year, sale
  FROM Sales2 S1
 WHERE sale =
   (SELECT sale
      FROM Sales2 S2
     WHERE S2.year =
       (SELECT MAX(year)            /* 条件2：在满足条件1的年份中，年份最早的一个 */
          FROM Sales2 S3
         WHERE S1.year > S3.year))  /* 条件1：与该年份相比是过去的年份 */
 ORDER BY year;