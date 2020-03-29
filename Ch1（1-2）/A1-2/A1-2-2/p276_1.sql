/* 练习题1-2-2 分地区排序 */
SELECT district, name, price,
          RANK() OVER(PARTITION BY district 
                      ORDER BY price DESC) AS rank_1
  FROM DistrictProducts;