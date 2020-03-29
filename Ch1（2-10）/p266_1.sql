/* 以组为单位进行聚合查询 */
SELECT team, AVG(age)
  FROM Teams
 GROUP BY team;