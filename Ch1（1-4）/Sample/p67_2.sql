/* 精确关系除法运算：使用外连接和COUNT函数 */
  SELECT SI.shop
    FROM ShopItems AS SI LEFT OUTER JOIN Items AS I
      ON SI.item=I.item
GROUP BY SI.shop
  HAVING COUNT(SI.item) = (SELECT COUNT(item) FROM Items)   /* 条件1 */
     AND COUNT(I.item)  = (SELECT COUNT(item) FROM Items);  /* 条件2 */