/* 练习题1-2-2：关联子查询 */
SELECT P1.district, P1.name,
       P1.price,
       (SELECT COUNT(P2.price)
          FROM DistrictProducts P2
         WHERE P1.district = P2.district    /* 在同一个地区内进行比较 */
           AND P2.price > P1.price) + 1 AS rank_1
  FROM DistrictProducts P1;