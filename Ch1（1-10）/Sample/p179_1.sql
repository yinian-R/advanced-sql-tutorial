/* 分数在50分以上的男生的人数比分数在50分以上的女生的人数多的班级 */
SELECT class
  FROM TestResults 
GROUP BY class
HAVING SUM(CASE WHEN score >= 50 AND sex = '男'
                THEN 1
                ELSE 0 END)
       > SUM(CASE WHEN score >= 50 AND sex = '女'
                  THEN 1
                  ELSE 0 END) ;