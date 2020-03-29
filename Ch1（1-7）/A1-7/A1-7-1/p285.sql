/* 练习题1-7-1：改进“只使用UNION的比较” */
SELECT CASE WHEN COUNT(*) = (SELECT COUNT(*) FROM tbl_A )
             AND COUNT(*) = (SELECT COUNT(*) FROM tbl_B )
            THEN '相等'
            ELSE '不相等' END AS result
  FROM ( SELECT * FROM tbl_A
         UNION
         SELECT * FROM tbl_B ) TMP;