/* 全称量化（1）：习惯“肯定<＝>双重否定”之间的转换 */
SELECT DISTINCT student_id
  FROM TestScores TS1
 WHERE NOT EXISTS  /* 不存在满足以下条件的行 */
        (SELECT *
           FROM TestScores TS2
          WHERE TS2.student_id = TS1.student_id
            AND TS2.score < 50);   /* 分数不满50分的科目 */