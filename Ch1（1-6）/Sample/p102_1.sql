/* 求累计值：使用窗口函数 */
SELECT prc_date, prc_amt,
       SUM(prc_amt) OVER (ORDER BY prc_date) AS onhand_amt
  FROM Accounts;