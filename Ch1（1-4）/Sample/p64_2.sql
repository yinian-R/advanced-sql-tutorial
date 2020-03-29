/* 查询“提交日期”列内不包含NULL的学院(2)：使用CASE表达式 */
SELECT dpt
  FROM Students
 GROUP BY dpt
HAVING COUNT(*) = SUM(CASE WHEN sbmt_date IS NOT NULL
                           THEN 1
                           ELSE 0 END);