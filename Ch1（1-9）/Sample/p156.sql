/* 找出需要的空位（1）：不考虑座位的换排 */
SELECT S1.seat   AS start_seat, '～' , S2.seat AS end_seat
  FROM Seats S1, Seats S2
 WHERE S2.seat = S1.seat + (:head_cnt -1)  /* 决定起点和终点 */
   AND NOT EXISTS
          (SELECT *
             FROM Seats S3
            WHERE S3.seat BETWEEN S1.seat AND S2.seat
              AND S3.status <> '未预订' )
ORDER BY start_seat;