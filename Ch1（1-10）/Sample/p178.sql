/* 75%以上的学生分数都在80分以上的班级 */
SELECT class
  FROM TestResults 
GROUP BY class
HAVING COUNT(*) * 0.75 
         <= SUM(CASE WHEN score >= 80 
                     THEN 1
                     ELSE 0 END) ;