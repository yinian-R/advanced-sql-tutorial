/* 求单调递增的区间的SQL语句：子集也输出 */
SELECT S1.deal_date   AS start_date,
       S2.deal_date   AS end_date
  FROM MyStock S1, MyStock S2
 WHERE S1.deal_date < S2.deal_date  /* 第一步：生成起点和终点的组合 */
   AND  NOT EXISTS                  /* 第二步：描述区间内所有日期需要满足的条件 */
           ( SELECT *
               FROM MyStock S3, MyStock S4
              WHERE S3.deal_date BETWEEN S1.deal_date AND S2.deal_date
                AND S4.deal_date BETWEEN S1.deal_date AND S2.deal_date
                AND S3.deal_date < S4.deal_date
                AND S3.price >= S4.price)
ORDER BY start_date, end_date;