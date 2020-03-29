/* 练习题1-9-2：求序列——面向集合的思想 */
SELECT S1.seat AS start_seat, '～' , S2.seat AS end_seat
  FROM Seats S1, Seats S2, Seats S3
 WHERE S2.seat = S1.seat + (:head_cnt -1)
   AND S3.seat BETWEEN S1.seat AND S2.seat
 GROUP BY S1.seat, S2.seat
HAVING COUNT(*) = SUM(CASE WHEN S3.status = '未预订' THEN 1 ELSE 0 END);