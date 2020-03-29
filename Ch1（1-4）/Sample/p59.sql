/* 求众数的SQL语句（1）：使用谓词 */
  SELECT income, COUNT(*) AS cnt
    FROM Graduates
   GROUP BY income
  HAVING COUNT(*) >= ALL ( SELECT COUNT(*)
                             FROM Graduates
                         GROUP BY income);