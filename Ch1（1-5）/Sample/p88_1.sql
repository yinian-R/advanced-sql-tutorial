/* 用外连接求差集：A－B */
SELECT A.id AS id,  A.name AS A_name
  FROM Class_A  A LEFT OUTER JOIN Class_B B
    ON A.id = B.id
 WHERE B.name IS NULL;