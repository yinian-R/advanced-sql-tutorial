/* 用外连接进行关系除法运算：差集的应用 */
SELECT DISTINCT shop
  FROM ShopItems SI1
WHERE NOT EXISTS
      (SELECT I.item 
         FROM Items I LEFT OUTER JOIN ShopItems SI2
           ON SI1.shop = SI2.shop
          AND I.item   = SI2.item 
        WHERE SI2.item IS NULL) ;