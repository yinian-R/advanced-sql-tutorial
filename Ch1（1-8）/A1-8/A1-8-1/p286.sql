/* 练习题1-8-1：数组表——行结构表的情况 
   错误的结果 */
SELECT DISTINCT key
  FROM ArrayTbl2 AT1
 WHERE NOT EXISTS
        (SELECT *
           FROM ArrayTbl2 AT2
          WHERE AT1.key = AT2.key
            AND AT2.val <> 1);