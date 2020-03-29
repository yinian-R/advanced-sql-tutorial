/* 添加第3个条件：年龄是20岁，或者不是20岁，或者年龄未知 */
SELECT *
  FROM Students2
 WHERE age = 20
    OR age <> 20
    OR age IS NULL;