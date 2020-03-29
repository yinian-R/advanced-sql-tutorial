/* 用于删除重复行的SQL语句（1）：使用极值函数 */
DELETE FROM Products P1
 WHERE rowid < ( SELECT MAX(P2.rowid)
                   FROM Products P2
                  WHERE P1.name = P2. name
                    AND P1.price = P2.price ) ;