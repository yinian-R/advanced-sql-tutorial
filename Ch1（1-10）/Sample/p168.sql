/* 用谓词表达全称量化命题 */
SELECT team_id, member
  FROM Teams T1
 WHERE NOT EXISTS
        (SELECT *
           FROM Teams T2
          WHERE T1.team_id = T2.team_id
            AND status <> '待命' );