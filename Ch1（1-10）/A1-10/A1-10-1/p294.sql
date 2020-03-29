/* 练习题1-10-1：单重集合与多重集合的一般化 
 选择（材料, 原产国）组合有重复的生产地 */
SELECT center
  FROM Materials2
 GROUP BY center
HAVING COUNT(material || orgland) <> COUNT(DISTINCT material || orgland);
