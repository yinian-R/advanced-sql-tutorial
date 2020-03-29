/* 用于获取组合的SQL语句：扩展成3列时 */
SELECT P1.name AS name_1, P2.name AS name_2, P3.name AS name_3
  FROM Products P1, Products P2, Products P3
WHERE P1.name > P2.name
  AND P2.name > P3.name;