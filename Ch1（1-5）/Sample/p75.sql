/* 水平展开（3）：嵌套使用CASE表达式 */
SELECT  name,
        CASE WHEN SUM(CASE WHEN course = 'SQL入门' THEN 1 ELSE NULL END) >= 1
             THEN '○' ELSE NULL END AS "SQL入门",
        CASE WHEN SUM(CASE WHEN course = 'UNIX基础' THEN 1 ELSE NULL END) >= 1
             THEN '○' ELSE NULL END AS "UNIX基础",
        CASE WHEN SUM(CASE WHEN course = 'Java中级' THEN 1 ELSE NULL END) >= 1
             THEN '○' ELSE NULL END AS "Java中级"
  FROM Courses
 GROUP BY name;