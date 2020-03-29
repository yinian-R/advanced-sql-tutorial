/* 练习题1-8-2：使用ALL谓词进行全称量化
   查找已经完成到工程1的项目：使用ALL谓词解答 */
SELECT *
  FROM Projects P1
 WHERE '○' = ALL
             (SELECT CASE WHEN step_nbr <= 1 AND status = '完成' THEN '○'
                          WHEN step_nbr > 1  AND status = '等待' THEN '○'
                          ELSE '×' END
                FROM Projects P2
               WHERE P1.project_id = P2. project_id);
