/* 在CASE表达式中使用聚合函数 */
SELECT std_id,
       CASE WHEN COUNT(*) = 1 /* 只加入了一个社团的学生 */
            THEN MAX(club_id)
            ELSE MAX(CASE WHEN main_club_flg = 'Y'
                          THEN club_id
                          ELSE NULL END)
        END AS main_club
  FROM StudentClub
 GROUP BY std_id;