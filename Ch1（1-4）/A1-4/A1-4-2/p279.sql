/* 练习题1-4-2：练习“特征函数” 
   查找所有学生都在9月份提交完成的学院（2）：使用EXTRACT函数 */
SELECT dpt
  FROM Students
 GROUP BY dpt
HAVING COUNT(*) = SUM(CASE WHEN EXTRACT (YEAR FROM sbmt_date) = 2005
                            AND EXTRACT (MONTH FROM sbmt_date) = 09
                           THEN 1 ELSE 0 END);