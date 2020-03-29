/* 升级版：把完全包含别人的住宿期间的情况也输出 */
SELECT reserver, start_date, end_date
 FROM Reservations R1
WHERE EXISTS
       (SELECT *
          FROM Reservations R2
         WHERE R1.reserver <> R2.reserver
           AND (  (     R1.start_date BETWEEN R2.start_date AND R2.end_date
                     OR R1.end_date   BETWEEN R2.start_date AND R2.end_date)
                OR (    R2.start_date BETWEEN R1.start_date AND R1.end_date
                    AND R2.end_date   BETWEEN R1.start_date AND R1.end_date)));