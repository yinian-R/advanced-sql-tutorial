/* 全称量化（1）：习惯“肯定<＝>双重否定”之间的转换 */
SELECT DISTINCT student_id
  FROM TestScores TS1
 WHERE subject IN ('数学', '语文')
   AND NOT EXISTS
        (SELECT *
           FROM TestScores TS2
          WHERE TS2.student_id = TS1.student_id
            AND 1 = CASE WHEN subject = '数学' AND score < 80 THEN 1
                         WHEN subject = '语文' AND score < 50 THEN 1
                         ELSE 0 END);