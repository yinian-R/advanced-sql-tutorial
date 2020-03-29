/* 把“排序”列也包括在结果中(p.288) */
SELECT id,
       CASE id
         WHEN 'B' THEN 1
         WHEN 'A' THEN 2
         WHEN 'D' THEN 3
         WHEN 'C' THEN 4
         ELSE NULL END AS sort_col
  FROM Greatests
 ORDER BY sort_col;