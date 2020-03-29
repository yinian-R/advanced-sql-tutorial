/* 转换成行格式后使用MAX函数 */
SELECT id, MAX(col) AS greatest
  FROM (SELECT key, x AS col FROM Greatests
        UNION ALL
        SELECT key, y AS col FROM Greatests
        UNION ALL
        SELECT key, z AS col FROM Greatests) TMP
 GROUP BY key;
