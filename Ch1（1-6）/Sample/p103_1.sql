/* 求移动累计值（1）：使用窗口函数 */
SELECT prc_date, prc_amt,
       SUM(prc_amt) OVER (ORDER BY prc_date
                           ROWS 2 PRECEDING) AS onhand_amt
  FROM Accounts;