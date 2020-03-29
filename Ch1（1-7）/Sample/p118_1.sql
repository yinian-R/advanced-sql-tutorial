/* 比较表和表：进阶篇（在Oracle中无法运行） */
SELECT DISTINCT CASE WHEN COUNT(*) = 0 
                     THEN '相等'
                     ELSE '不相等' END AS result
  FROM ((SELECT * FROM  tbl_A
         UNION
         SELECT * FROM  tbl_B) 
         EXCEPT
        (SELECT * FROM  tbl_A
         INTERSECT 
         SELECT * FROM  tbl_B)) TMP;