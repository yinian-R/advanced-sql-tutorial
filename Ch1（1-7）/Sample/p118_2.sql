/* 用于比较表与表的diff：求异或集 */
(SELECT * FROM  tbl_A
   EXCEPT
 SELECT * FROM  tbl_B)
 UNION ALL
(SELECT * FROM  tbl_B
   EXCEPT
 SELECT * FROM  tbl_A);