/* 用于删除重复行的SQL语句（2）：使用非等值连接 */
DELETE FROM Products P1
 WHERE EXISTS ( SELECT *
                  FROM Products P2
                 WHERE P1.name = P2.name
                   AND P1.price = P2.price
                   AND P1.rowid < P2.rowid );