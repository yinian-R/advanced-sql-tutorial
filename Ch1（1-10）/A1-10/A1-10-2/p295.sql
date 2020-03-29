/* 练习题1-10-2：多个条件的特征函数 */
SELECT student_id
  FROM TestScores
 WHERE subject IN ('数学', '语文')
 GROUP BY student_id
HAVING SUM(CASE WHEN subject = '数学' AND score >= 80 THEN 1
                WHEN subject = '语文' AND score >= 50 THEN 1
                ELSE 0 END) = 2;