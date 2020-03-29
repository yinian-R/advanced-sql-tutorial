/* 用于查找是同一家人但住址却不同的记录的SQL语句 */
SELECT DISTINCT A1.name, A1.address
  FROM Addresses A1, Addresses A2
 WHERE A1.family_id = A2.family_id
   AND A1.address <> A2.address ;