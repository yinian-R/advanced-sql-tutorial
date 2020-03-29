/* 用于求出缺席者的SQL语句（2）：使用差集运算 */
SELECT M1.meeting, M2.person
  FROM Meetings M1, Meetings M2
EXCEPT
SELECT meeting, person
  FROM Meetings;