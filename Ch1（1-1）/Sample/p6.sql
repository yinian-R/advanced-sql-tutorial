/* 把县编号转换成地区编号(2)：将CASE表达式归纳到一处 */
SELECT CASE pref_name
              WHEN '德岛' THEN '四国'
              WHEN '香川' THEN '四国'
              WHEN '爱媛' THEN '四国'
              WHEN '高知' THEN '四国'
              WHEN '福冈' THEN '九州'
              WHEN '佐贺' THEN '九州'
              WHEN '长崎' THEN '九州'
              ELSE '其他' END AS district,
       SUM(population)
  FROM PopTbl
 GROUP BY district;