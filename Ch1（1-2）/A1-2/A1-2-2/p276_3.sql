/* 练习题1-2-2：自连接 */
SELECT P1.district, P1.name,
       MAX(P1.price) AS price, 
       COUNT(P2.name) +1 AS rank_1
  FROM DistrictProducts P1 LEFT OUTER JOIN DistrictProducts P2
    ON  P1.district = P2.district
   AND P1.price < P2.price
 GROUP BY P1.district, P1.name;
