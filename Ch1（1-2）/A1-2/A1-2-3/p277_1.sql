/* 练习题1-2-3：仅可用于DB2 */
UPDATE DistrictProducts2
   SET ranking = RANK() OVER(PARTITION BY district
                             ORDER BY price DESC);