/* 列表显示是否存在重复 */
SELECT center,
       CASE WHEN COUNT(material) <> COUNT(DISTINCT material) 
            THEN '存在重复'
            ELSE '不存在重复' END AS status
  FROM Materials
 GROUP BY center;