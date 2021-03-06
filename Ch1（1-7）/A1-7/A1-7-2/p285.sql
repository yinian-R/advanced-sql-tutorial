/* 练习题1-7-2：精确关系除法运算 */
SELECT DISTINCT emp
  FROM EmpSkills ES1
 WHERE NOT EXISTS
        (SELECT skill
           FROM Skills
         EXCEPT
         SELECT skill
           FROM EmpSkills ES2
          WHERE ES1.emp = ES2.emp)
  AND NOT EXISTS
        (SELECT skill
           FROM EmpSkills ES3
          WHERE ES1.emp = ES3.emp
         EXCEPT
         SELECT skill
           FROM Skills );