/* 使用外连接生成嵌套式表侧栏：错误的SQL语句 */
SELECT MASTER1.age_class AS age_class,
       MASTER2.sex_cd AS sex_cd,
       DATA.pop_tohoku AS pop_tohoku,
       DATA.pop_kanto AS pop_kanto
  FROM (SELECT age_class, sex_cd,
               SUM(CASE WHEN pref_name IN ('青森', '秋田')
                        THEN population ELSE NULL END) AS pop_tohoku,
               SUM(CASE WHEN pref_name IN ('东京', '千叶')
                        THEN population ELSE NULL END) AS pop_kanto
          FROM TblPop
         GROUP BY age_class, sex_cd) DATA
        RIGHT OUTER JOIN TblAge MASTER1 /* 外连接1：和年龄层级主表进行外连接 */
           ON MASTER1.age_class = DATA.age_class
              RIGHT OUTER JOIN TblSex MASTER2 /* 外连接2：和性别主表进行外连接 */
                 ON MASTER2.sex_cd = DATA.sex_cd;