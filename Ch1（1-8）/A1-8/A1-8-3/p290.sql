/* 练习题1-8-3：求质数 */
SELECT num AS prime
  FROM Numbers Dividend
 WHERE num > 1
   AND NOT EXISTS
        (SELECT *
           FROM Numbers Divisor
          WHERE Divisor.num <= Dividend.num / 2 /* 除了自身之外的约数必定小于等于自身值的一半 */
            AND Divisor.num <> 1 /* 约数中不包含1 */
            AND MOD(Dividend.num, Divisor.num) = 0)  /*“除不尽”的否定条件是“除尽” */
ORDER BY prime;