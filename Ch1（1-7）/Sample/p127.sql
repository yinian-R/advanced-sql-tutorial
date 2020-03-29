/* 删除重复行的高效SQL语句（2）：通过NOT IN求补集 */
DELETE FROM Products 
 WHERE rowid NOT IN ( SELECT MAX(rowid)
                        FROM Products 
                       GROUP BY name, price);