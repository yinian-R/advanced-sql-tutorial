/* 练习题1-6-2：使用OVERLAPS查询重叠的时间区间 */
SELECT R1.reserver, R1.start_date, R1.end_date
  FROM Reservations R1, Reservations R2
 WHERE R1.reserver <> R2.reserver /* 与除自己以外的客人进行比较 */
   AND (R1.start_date, R1.end_date) OVERLAPS (R2.start_date, R2.end_date);