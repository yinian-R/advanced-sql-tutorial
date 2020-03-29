/* 求连续编号（1）：求0到99的数 */
SELECT D1.digit + (D2.digit * 10)  AS seq
  FROM Digits D1, Digits D2
ORDER BY seq;