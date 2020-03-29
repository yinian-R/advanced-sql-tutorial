/* 练习题1-5-2：请留意孩子的人数 */
SELECT EMP.employee, COUNT(*) AS child_cnt /* 不能使用COUNT(*)！ */
  FROM Personnel EMP
       LEFT OUTER JOIN Children
    ON CHILDREN.child IN (EMP.child_1, EMP.child_2, EMP.child_3)
 GROUP BY EMP.employee;