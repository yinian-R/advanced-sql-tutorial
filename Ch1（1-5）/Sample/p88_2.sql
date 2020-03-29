/* 用外连接求差集：B－A */
SELECT B.id AS id, B.name AS B_name
  FROM Class_A  A  RIGHT OUTER JOIN Class_B B
    ON A.id = B.id
 WHERE A.name IS NULL;