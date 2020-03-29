/* 停在第1个外连接处时：结果里包含年龄层级为2的数据 */
SELECT MASTER1.age_class AS age_class,
       DATA.sex_cd AS sex_cd,
       DATA.pop_tohoku AS pop_tohoku,
       DATA.pop_kanto AS pop_kanto
  FROM (SELECT age_class, sex_cd,
               SUM(CASE WHEN pref_name IN ('青森', '秋田')
                        THEN population ELSE NULL END) AS pop_tohoku,
               SUM(CASE WHEN pref_name IN ('东京', '千叶')
                        THEN population ELSE NULL END) AS pop_kanto
          FROM TblPop
         GROUP BY age_class, sex_cd) DATA
        RIGHT OUTER JOIN TblAge MASTER1
           ON MASTER1.age_class = DATA.age_class;