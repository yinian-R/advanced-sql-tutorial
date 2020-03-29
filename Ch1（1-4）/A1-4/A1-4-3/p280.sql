/* 练习题1-4-3：购物篮分析问题的一般化 */
SELECT SI.shop,
       COUNT(SI.item) AS my_item_cnt,
       (SELECT COUNT(item) FROM Items) - COUNT(SI.item) AS diff_cnt
  FROM ShopItems SI, Items I
 WHERE SI.item = I.item
 GROUP BY SI.shop;