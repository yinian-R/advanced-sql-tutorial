/* 按人口数量等级划分都道府县 */
SELECT CASE WHEN population < 100 THEN '01'
            WHEN population >= 100 AND population < 200 THEN '02'
            WHEN population >= 200 AND population < 300 THEN '03'
            WHEN population >= 300 THEN '04'
            ELSE NULL END AS pop_class,
       COUNT(*) AS cnt
  FROM PopTbl
 GROUP BY CASE WHEN population < 100 THEN '01'
               WHEN population >= 100 AND population < 200 THEN '02'
               WHEN population >= 200 AND population < 300 THEN '03'
               WHEN population >= 300 THEN '04'
               ELSE NULL END;