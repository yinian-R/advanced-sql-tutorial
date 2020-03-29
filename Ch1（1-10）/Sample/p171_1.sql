/* 用集合表达全称量化命题（2） */
SELECT team_id
  FROM Teams
 GROUP BY team_id
HAVING MAX(status) = '待命'
   AND MIN(status) = '待命';