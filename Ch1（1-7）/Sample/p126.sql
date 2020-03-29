/* 用于删除重复行的高效SQL语句（1）：通过EXCEPT求补集 */
DELETE FROM Products
 WHERE rowid IN ( SELECT rowid
                    FROM Products 
                  EXCEPT
                  SELECT MAX(rowid)
                    FROM Products 
                   GROUP BY name, price);