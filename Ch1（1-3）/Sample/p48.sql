/* 正确的SQL语句：拉里和伯杰将被查询到 */
SELECT *
  FROM Class_A A
 WHERE NOT EXISTS ( SELECT *
                      FROM Class_B B
                     WHERE A.age = B.age
                       AND B.city = '东京' );