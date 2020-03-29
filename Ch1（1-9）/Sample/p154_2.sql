/* ÇóËùÓÐÈ±Ê§±àºÅ£ºNOT IN°æ */
SELECT seq
  FROM Sequence
 WHERE seq BETWEEN 1 AND 12
   AND seq NOT IN (SELECT seq FROM SeqTbl);