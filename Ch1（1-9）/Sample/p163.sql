--排除掉子集，只取最长的时间区间
SELECT MIN(start_date) AS start_date,          /* 最大限度地向前延伸起点 */
       end_date
  FROM  (SELECT S1.deal_date AS start_date,
                MAX(S2.deal_date) AS end_date  /* 最大限度地向后延伸终点 */
           FROM MyStock S1, MyStock S2
          WHERE S1.deal_date < S2.deal_date
            AND NOT EXISTS
             (SELECT *
                FROM MyStock S3, MyStock S4
               WHERE S3.deal_date BETWEEN S1.deal_date AND S2.deal_date
                 AND S4.deal_date BETWEEN S1.deal_date AND S2.deal_date
                 AND S3.deal_date < S4.deal_date
                 AND S3.price >= S4.price)
         GROUP BY S1.deal_date) TMP
GROUP BY end_date
ORDER BY start_date;