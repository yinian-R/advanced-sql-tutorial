/* 全外连接保留全部信息 */
SELECT COALESCE(A.id, B.id) AS id,
       A.name AS A_name,
       B.name AS B_name
FROM Class_A  A  FULL OUTER JOIN Class_B  B
  ON A.id = B.id;