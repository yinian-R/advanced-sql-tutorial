/* 查询完成到了工程1的项目：谓词逻辑的解法 */
SELECT *
  FROM Projects P1
 WHERE NOT EXISTS
        (SELECT status
           FROM Projects P2
          WHERE P1.project_id = P2. project_id  /* 以项目为单位进行条件判断 */
            AND status <> CASE WHEN step_nbr <= 1 /* 使用双重否定来表达全称量化命题 */
                               THEN '完成'
                               ELSE '等待' END);