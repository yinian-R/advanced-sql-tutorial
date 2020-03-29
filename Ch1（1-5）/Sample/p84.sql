/* 解答(2)：先进行一对多的连接再聚合 */
SELECT I.item_no, SUM(SH.quantity) AS total_qty
  FROM Items I LEFT OUTER JOIN SalesHistory SH
    ON I.item_no = SH.item_no /* 一对多的连接 */
 GROUP BY I.item_no;