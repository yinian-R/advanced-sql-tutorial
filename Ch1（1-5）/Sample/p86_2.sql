/* 数据库不支持全外连接时的替代方案 */
SELECT A.id AS id, A.name, B.name
  FROM Class_A  A   LEFT OUTER JOIN Class_B  B
    ON A.id = B.id
UNION
SELECT B.id AS id, A.name, B.name
  FROM Class_A  A  RIGHT OUTER JOIN Class_B  B
    ON A.id = B.id;