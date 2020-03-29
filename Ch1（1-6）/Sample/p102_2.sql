/* 求累计值：使用冯·诺依曼型递归集合 */
SELECT prc_date, A1.prc_amt,
      (SELECT SUM(prc_amt)
         FROM Accounts A2
        WHERE A1.prc_date >= A2.prc_date ) AS onhand_amt
  FROM Accounts A1
 ORDER BY prc_date;