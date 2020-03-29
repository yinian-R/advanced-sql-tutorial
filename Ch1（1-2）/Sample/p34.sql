/* 排序：改为内连接 */
SELECT P1.name,
       MAX(P1.price) AS price,
       COUNT(P2.name) +1 AS rank_1
  FROM Products P1 INNER JOIN Products P2
    ON P1.price < P2.price
 GROUP BY P1.name
 ORDER BY rank_1;