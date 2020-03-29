/* 求移动累计值（3）：不满3行的区间按无效处理 */
SELECT prc_date, A1.prc_amt,
 (SELECT SUM(prc_amt)
    FROM Accounts A2
   WHERE A1.prc_date >= A2.prc_date
     AND (SELECT COUNT(*)
            FROM Accounts A3
           WHERE A3.prc_date 
             BETWEEN A2.prc_date AND A1.prc_date  ) <= 3
   HAVING  COUNT(*) =3) AS mvg_sum  /* 不满3行数据的不显示 */
  FROM  Accounts A1
 ORDER BY prc_date;