/* 列表显示各个队伍是否所有队员都在待命 */
SELECT team_id,
       CASE WHEN MAX(status) = '待命' AND MIN(status) = '待命'
            THEN '全都在待命'
            ELSE '队长！人手不够' END AS status
  FROM Teams
 GROUP BY team_id;