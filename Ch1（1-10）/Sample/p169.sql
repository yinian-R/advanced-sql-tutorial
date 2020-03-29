/* 用集合表达全称量化命题（1） */
SELECT team_id
  FROM Teams
 GROUP BY team_id
HAVING COUNT(*) = SUM(CASE WHEN status = '待命'
                           THEN 1
                           ELSE 0 END);