/* 存在重复的集合：使用EXISTS */
SELECT center, material
  FROM Materials M1
 WHERE EXISTS
       (SELECT *
          FROM Materials M2
         WHERE M1.center = M2.center
           AND M1.receive_date <> M2.receive_date
           AND M1.material = M2.material);
