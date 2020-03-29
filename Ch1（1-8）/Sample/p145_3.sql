/* 查询全是NULL的行：错误的解法 */
SELECT *
  FROM ArrayTbl
 WHERE NULL = ALL (col1, col2, col3, col4, col5, col6, col7, col8, col9, col10);


/*译者注：上面的代码在PostgreSQL中运行时会报错。将代码改为下面这样即可成功运行*/
SELECT *
  FROM ArrayTbl
 WHERE NULL = ALL (values (col1), (col2), (col3), (col4), (col5), (col6), (col7), (col8), (col9), (col10));