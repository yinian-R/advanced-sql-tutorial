/* 排序：使用窗口函数 */
SELECT name, price,
       RANK() OVER (ORDER BY price DESC) AS rank_1,
       DENSE_RANK() OVER (ORDER BY price DESC) AS rank_2
  FROM Products;