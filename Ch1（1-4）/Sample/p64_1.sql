/* 查询“提交日期”列内不包含NULL的学院(1)：使用COUNT函数 */
SELECT dpt
  FROM Students
 GROUP BY dpt
HAVING COUNT(*) = COUNT(sbmt_date);