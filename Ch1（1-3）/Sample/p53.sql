/* 查询比住在东京的学生的平均年龄还要小的A班学生的SQL语句？ */
SELECT *
  FROM Class_A
 WHERE age < ( SELECT AVG(age)
                 FROM Class_B
                WHERE city = '东京' );