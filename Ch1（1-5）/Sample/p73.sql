/* 水平展开求交叉表（1）：使用外连接 */
SELECT C0.name,
       CASE WHEN C1.name IS NOT NULL THEN '○' ELSE NULL END AS "SQL入门",
       CASE WHEN C2.name IS NOT NULL THEN '○' ELSE NULL END AS "UNIX基础",
       CASE WHEN C3.name IS NOT NULL THEN '○' ELSE NULL END AS "Java中级"
  FROM  (SELECT DISTINCT name FROM  Courses) C0
    LEFT OUTER JOIN
    (SELECT name FROM Courses WHERE course = 'SQL入门' ) C1
    ON  C0.name = C1.name
      LEFT OUTER JOIN
        (SELECT name FROM Courses WHERE course = 'UNIX基础' ) C2
        ON  C0.name = C2.name
          LEFT OUTER JOIN
            (SELECT name FROM Courses WHERE course = 'Java中级' ) C3
            ON  C0.name = C3.name;