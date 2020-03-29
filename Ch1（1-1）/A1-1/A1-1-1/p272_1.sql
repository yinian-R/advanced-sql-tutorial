/* 求x和y二者中较大的值 */
SELECT id,
       CASE WHEN x < y THEN y
            ELSE x END AS greatest
  FROM Greatests;