/* 仅适用于Oracle和MySQL */
SELECT id, GREATEST(GREATEST(x,y), z) AS greatest
  FROM Greatests;