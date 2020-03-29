/* 找出需要的空位（2）：考虑座位的换排 */
SELECT S1.seat   AS start_seat, '～' , S2.seat AS end_seat
  FROM Seats2 S1, Seats2 S2
 WHERE S2.seat = S1.seat + (:head_cnt -1)  --决定起点和终点
   AND NOT EXISTS
          (SELECT *
             FROM Seats2 S3
            WHERE S3.seat BETWEEN S1.seat AND S2.seat
              AND (    S3.status <> '未预订'
                    OR S3.row_id <> S1.row_id))
ORDER BY start_seat;