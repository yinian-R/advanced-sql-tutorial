/* 第二阶段：求最长的序列 */
SELECT start_seat, '～', end_seat, seat_cnt
  FROM Sequences
 WHERE seat_cnt = (SELECT MAX(seat_cnt) FROM Sequences);