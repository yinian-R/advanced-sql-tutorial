/* 第一阶段：生成存储了所有序列的视图 */
CREATE VIEW Sequences (start_seat, end_seat, seat_cnt) AS
SELECT S1.seat  AS start_seat,
       S2.seat  AS end_seat,
       S2.seat - S1.seat + 1 AS seat_cnt
  FROM Seats3 S1, Seats3 S2
 WHERE S1.seat <= S2.seat  /* 第一步：生成起点和终点的组合 */
   AND NOT EXISTS   /* 第二步：描述序列内所有点需要满足的条件 */
       (SELECT *
          FROM Seats3 S3
         WHERE (     S3.seat BETWEEN S1.seat AND S2.seat 
                 AND S3.status <> '未预订')                         /* 条件1的否定 */
            OR  (S3.seat = S2.seat + 1 AND S3.status = '未预订' )    /* 条件2的否定 */
            OR  (S3.seat = S1.seat - 1 AND S3.status = '未预订' ));  /* 条件3的否定 */
