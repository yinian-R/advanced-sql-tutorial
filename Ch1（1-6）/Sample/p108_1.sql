/* 求重叠的住宿期间 */
SELECT reserver, start_date, end_date
  FROM Reservations R1
 WHERE EXISTS
       (SELECT *
          FROM Reservations R2
         WHERE R1.reserver <> R2.reserver  /* 与自己以外的客人进行比较 */
           AND ( R1.start_date BETWEEN R2.start_date AND R2.end_date    /* 条件（1）：自己的入住日期在他人的住宿期间内 */
              OR R1.end_date  BETWEEN R2.start_date AND R2.end_date));  /* 条件（2）：自己的离店日期在他人的住宿期间内 */