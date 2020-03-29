/* 对从1到10的整数以3为模求剩余类 */
SELECT MOD(num, 3) AS modulo,
       num
  FROM Natural
 ORDER BY modulo, num;