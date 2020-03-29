/* 以组为单位进行聚合查询？ */
SELECT team, AVG(age), age
  FROM Teams
 GROUP BY team;