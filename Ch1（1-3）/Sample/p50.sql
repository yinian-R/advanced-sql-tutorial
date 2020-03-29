/* 查询比B班住在东京的所有学生年龄都小的A班学生 */
SELECT *
  FROM Class_A
 WHERE age < ALL ( SELECT age
                     FROM Class_B
                    WHERE city = '东京' );