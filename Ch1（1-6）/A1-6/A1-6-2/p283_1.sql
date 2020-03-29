/* 练习题1-6-2：使用OVERLAPS查询重叠的时间区间 */
SELECT reserver, start_date, end_date
  FROM Reservations R1
 WHERE EXISTS
        (SELECT *
           FROM Reservations R2
          WHERE R1.reserver <> R2.reserver /* 与除自己以外的客人进行比较 */
            AND (R1.start_date, R1.end_date) OVERLAPS (R2.start_date, R2.end_date));
