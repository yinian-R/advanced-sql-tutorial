/* ÕýÈ· */
SELECT team, MAX(age),
       (SELECT MAX(member)
          FROM Teams T2
         WHERE T2.team = T1.team
           AND T2.age = MAX(T1.age)) AS oldest
  FROM Teams T1
 GROUP BY team;