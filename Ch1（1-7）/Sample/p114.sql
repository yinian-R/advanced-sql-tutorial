/* 比较表和表：基础篇 */
SELECT COUNT(*) AS row_cnt
  FROM ( SELECT * 
           FROM   tbl_A 
         UNION
         SELECT * 
           FROM   tbl_B ) TMP;