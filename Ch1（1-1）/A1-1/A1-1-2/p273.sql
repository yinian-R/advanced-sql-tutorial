/* 转换行列——在表头里加入汇总和再揭(p.287) */
SELECT sex,
       SUM(population) AS total,
       SUM(CASE WHEN pref_name = '德岛' THEN population ELSE 0 END) AS col_1,
       SUM(CASE WHEN pref_name = '香川' THEN population ELSE 0 END) AS col_2,
       SUM(CASE WHEN pref_name = '爱媛' THEN population ELSE 0 END) AS col_3,
       SUM(CASE WHEN pref_name = '高知' THEN population ELSE 0 END) AS col_4,
       SUM(CASE WHEN pref_name IN ('德岛', '香川', '爱媛', '高知')
                THEN population ELSE 0 END) AS zaijie
  FROM PopTbl2
 GROUP BY sex;