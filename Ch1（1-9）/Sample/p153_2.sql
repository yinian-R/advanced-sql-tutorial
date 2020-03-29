/* 从序列视图中获取1到100 */
SELECT seq
  FROM Sequence
 WHERE seq BETWEEN 1 AND 100
ORDER BY seq;