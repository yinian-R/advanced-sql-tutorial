/* 水平展开（2）：使用标量子查询 */
SELECT  C0.name,
  (SELECT '○'
     FROM Courses C1
    WHERE course = 'SQL入门'
      AND C1.name = C0.name) AS "SQL入门",
  (SELECT '○'
     FROM Courses C2
    WHERE course = 'UNIX基础'
      AND C2.name = C0.name) AS "UNIX基础",
  (SELECT '○'
     FROM Courses C3
    WHERE course = 'Java中级'
      AND C3.name = C0.name) AS "Java中级"
  FROM (SELECT DISTINCT name FROM Courses) C0;