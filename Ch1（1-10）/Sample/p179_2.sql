/* 比较男生和女生平均分的SQL语句（1）：对空集使用AVG后返回0 */
SELECT class
  FROM TestResults
 GROUP BY class
HAVING AVG(CASE WHEN sex = '男'
                THEN score
                ELSE 0 END)
     < AVG(CASE WHEN sex = '女'
                THEN score
                ELSE 0 END) ;