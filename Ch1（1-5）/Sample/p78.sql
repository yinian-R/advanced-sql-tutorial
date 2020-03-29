/* 获取员工子女列表的SQL语句（没有孩子的员工也输出） */
SELECT EMP.employee, CHILDREN.child
  FROM Personnel EMP
       LEFT OUTER JOIN Children
    ON CHILDREN.child IN (EMP.child_1, EMP.child_2, EMP.child_3);


/* 获取员工子女列表的SQL语句（没有孩子的员工也输出） */
SELECT EMP.employee, CHILDREN.child
FROM   Personnel EMP
  LEFT OUTER JOIN
   (SELECT child_1 AS child FROM Personnel
    UNION
    SELECT child_2 AS child FROM Personnel
    UNION
    SELECT child_3 AS child FROM Personnel) CHILDREN
  ON CHILDREN.child IN (EMP.child_1, EMP.child_2, EMP.child_3);