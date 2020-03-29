/* 用于查找价格相等但商品名称不同的记录的SQL语句 */
SELECT DISTINCT P1.name, P1.price
  FROM Products P1, Products P2
 WHERE P1.price = P2.price
   AND P1.name <> P2.name;