/* “列方向”的存在量化（1） */
SELECT *
  FROM ArrayTbl
 WHERE 9 = ANY (col1, col2, col3, col4, col5, col6, col7, col8, col9, col10);

/*译者注：上面的代码在PostgreSQL中运行时会报错。将代码改为下面这样即可成功运行*/
SELECT *
  FROM ArrayTbl
 WHERE 9 = ANY (values (col1), (col2), (col3), (col4), (col5), (col6), (col7), (col8), (col9), (col10));