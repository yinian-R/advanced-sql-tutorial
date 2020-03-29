/* 练习题1-5-1：先连接还是先聚合 
   去掉一个内联视图后的修正版 */
SELECT MASTER.age_class AS age_class,
       MASTER.sex_cd AS sex_cd,
       SUM(CASE WHEN pref_name IN ('青森', '秋田')
                THEN population ELSE NULL END) AS pop_tohoku,
       SUM(CASE WHEN pref_name IN ('东京', '千叶')
                THEN population ELSE NULL END) AS pop_kanto
  FROM (SELECT age_class, sex_cd
          FROM TblAge CROSS JOIN TblSex) MASTER
        LEFT OUTER JOIN TblPop DATA      /* 关键在于理解DATA其实就是TblPop */
    ON MASTER.age_class = DATA.age_class
   AND MASTER.sex_cd = DATA.sex_cd
 GROUP BY MASTER.age_class, MASTER.sex_cd;