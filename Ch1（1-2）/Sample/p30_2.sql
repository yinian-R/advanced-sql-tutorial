/* 排序从1开始。如果已出现相同位次，则跳过之后的位次 */
SELECT P1.name,
       P1.price,
      (SELECT COUNT(P2.price)
         FROM Products P2
        WHERE P2.price > P1.price) + 1 AS rank_1
 FROM Products P1
 ORDER BY rank_1;