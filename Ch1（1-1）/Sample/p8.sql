/* 用一条SQL语句进行不同条件的统计 */
SELECT pref_name,
       /* 男性人口 */
       SUM( CASE WHEN sex = '1' THEN population ELSE 0 END) AS cnt_m,
       /* 女性人口 */
       SUM( CASE WHEN sex = '2' THEN population ELSE 0 END) AS cnt_f
  FROM PopTbl2
 GROUP BY pref_name;