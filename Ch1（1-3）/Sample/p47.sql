/* 查询与B班住在东京的学生年龄不同的A班学生的SQL语句？ */
SELECT *
  FROM Class_A
 WHERE age NOT IN ( SELECT age
                      FROM Class_B
                     WHERE city = '东京' );