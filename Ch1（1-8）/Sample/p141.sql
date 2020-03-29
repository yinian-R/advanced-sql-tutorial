/* 查询完成到了工程1的项目：面向集合的解法 */
SELECT project_id
  FROM Projects
 GROUP BY project_id
HAVING COUNT(*) = SUM(CASE WHEN step_nbr <= 1 AND status = '完成' THEN 1
                           WHEN step_nbr > 1 AND status = '等待' THEN 1
                           ELSE 0 END);
