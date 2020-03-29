/* 比较男生和女生平均分的SQL语句（2）：对空集求平均值后返回NULL */
SELECT class
  FROM TestResults
 GROUP BY class
HAVING AVG(CASE WHEN sex = '男'
                THEN score
                ELSE NULL END)
     < AVG(CASE WHEN sex = '女'
                THEN score
                ELSE NULL END);