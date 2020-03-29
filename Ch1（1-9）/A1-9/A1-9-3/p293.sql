/* 练习题1-9-3：求所有的序列——面向集合的思想 */
SELECT S1.seat AS start_seat,
       S2.seat AS end_seat,
       S2.seat - S1.seat + 1 AS seat_cnt
  FROM Seats3 S1, Seats3 S2, Seats3 S3
 WHERE S1.seat <= S2.seat /* 第一步：生成起点和终点的组合 */
   AND S3.seat BETWEEN S1.seat - 1 AND S2.seat + 1
 GROUP BY S1.seat, S2.seat
HAVING COUNT(*) = SUM(CASE WHEN S3.seat BETWEEN S1.seat AND S2.seat
                            AND S3.status = '未预订' THEN 1 /* 条件1 */
                           WHEN S3.seat = S2.seat + 1 AND S3.status = '已预订' THEN 1 /* 条件2 */
                           WHEN S3.seat = S1.seat - 1 AND S3.status = '已预订' THEN 1 /* 条件3 */
                           ELSE 0 END);