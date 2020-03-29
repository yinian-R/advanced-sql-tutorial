/* ÇóËùÓÐÈ±Ê§±àºÅ£ºEXCEPT°æ */
SELECT seq
  FROM Sequence
 WHERE seq BETWEEN 1 AND 12
EXCEPT
SELECT seq FROM SeqTbl;