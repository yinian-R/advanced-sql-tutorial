/* 练习题1-4-2：练习“特征函数” 
   查找所有学生都在9月份提交完成的学院（1）：使用BETWEEN谓词 */
SELECT dpt
  FROM Students
 GROUP BY dpt
HAVING COUNT(*) = SUM(CASE WHEN sbmt_date BETWEEN '2005-09-01' AND '2005-09-30'
                           THEN 1 ELSE 0 END);