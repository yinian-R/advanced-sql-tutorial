/* 查询啤酒、纸尿裤和自行车同时在库的店铺：错误的SQL语句 */
SELECT DISTINCT shop
  FROM ShopItems
 WHERE item IN (SELECT item FROM Items);