/* 查询啤酒、纸尿裤和自行车同时在库的店铺：正确的SQL语句 */
SELECT SI.shop
  FROM ShopItems SI, Items I
 WHERE SI.item = I.item
 GROUP BY SI.shop
HAVING COUNT(SI.item) = (SELECT COUNT(item) FROM Items);