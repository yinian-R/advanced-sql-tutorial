/* 用全外连接求异或集 */
SELECT COALESCE(A.id, B.id) AS id,
       COALESCE(A.name , B.name ) AS name
  FROM Class_A  A  FULL OUTER JOIN Class_B  B
    ON A.id = B.id
 WHERE A.name IS NULL 
    OR B.name IS NULL;