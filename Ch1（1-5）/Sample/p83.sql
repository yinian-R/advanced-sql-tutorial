/* 解答（1）：通过在连接前聚合来创建一对一的关系 */
SELECT I.item_no, SH.total_qty
  FROM Items I LEFT OUTER JOIN
       (SELECT item_no, SUM(quantity) AS total_qty
          FROM SalesHistory
         GROUP BY item_no) SH
    ON I.item_no = SH.item_no;